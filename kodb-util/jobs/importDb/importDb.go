package importDb

import (
	"context"
	"database/sql"
	"fmt"
	"kodb-util/mssql"
	"log"
	"os"
	"path/filepath"
	"strings"
)

const (
	DatabasesDir   = "../Databases"
	LoginsDir      = "../Logins"
	UsersDir       = "../Users"
	SchemasDir     = "../Schemas"
	TablesDir      = "../Tables"
	ViewsDir       = "../Views"
	StoredProcsDir = "../StoredProcedures"

	sqlExtPattern   = "*.sql"
	batchTerminator = "\nGO"
)

type ScriptArgs struct {
	// Should use the [master] database in the connection string instead of [databaseConfig.dbname]
	isUseDefaultSystemDb bool
	// isNoTx set to true to not use a Tx fence.  See: https://go.dev/doc/database/execute-transactions#best_practices
	isNoTx bool
}

func defaultScriptArgs() ScriptArgs {
	return ScriptArgs{
		isUseDefaultSystemDb: false,
		isNoTx:               false,
	}
}

// ImportDb attempts to load all of the MSSQL .sql batch files from the OpenKO-db project into an MSSQL instance
// Some of these batches execute against the default (master) database (DB, user, login create), the rest should be
// executed using the created database named in databaseConfig.dbname
func ImportDb(ctx context.Context) (err error) {
	fmt.Println("-- Import --")

	err = importDbs(ctx)
	if err != nil {
		return err
	}

	err = importLogins(ctx)
	if err != nil {
		return err
	}

	err = importUsers(ctx)
	if err != nil {
		return err
	}

	err = importSchemas(ctx)
	if err != nil {
		return err
	}

	err = importTables(ctx)
	if err != nil {
		return err
	}

	err = importViews(ctx)
	if err != nil {
		return err
	}

	err = importStoredProcs(ctx)
	if err != nil {
		return err
	}

	return nil
}

// runScripts runs a related group of sql files.  Each file is broken down into batches (separated by the "GO" keyword)
// and then executed/commited within a transaction fence.
func runScripts(ctx context.Context, fileNames []string, scriptArgs ScriptArgs) (err error) {
	fmt.Println(fmt.Sprintf("Found %d scripts", len(fileNames)))
	if len(fileNames) == 0 {
		return nil
	}

	driver := mssql.NewMssqlDbDriver()
	var tx *sql.Tx
	defer func() {
		if r := recover(); r != nil {
			log.Printf("Recovered from panic: %v", r)
			if err == nil {
				err = fmt.Errorf("panic: %v", r)
			}
		}

		// attempt to rollback any transaction fence on error
		if tx != nil && err != nil {
			fmt.Println("Rolling back DB transaction")
			_ = tx.Rollback()
		}

		driver.CloseConnection()
	}()

	var conn *sql.DB
	if scriptArgs.isUseDefaultSystemDb {
		conn, err = driver.GetConnectionToDbName(mssql.DefaultSysDbName)
	} else {
		conn, err = driver.GetConnection()
	}
	if err != nil {
		return err
	}

	for i := range fileNames {
		fmt.Println(fmt.Sprintf("Reading %s", fileNames[i]))
		sqlBytes, err := os.ReadFile(fileNames[i])
		if err != nil {
			return err
		}

		sqlStr := string(sqlBytes)
		fmt.Println(fmt.Sprintf("Running %s", fileNames[i]))
		batches := splitBatches(sqlStr)

		fmt.Println(fmt.Sprintf("file contains %d batches", len(batches)))
		if len(batches) == 0 {
			// if there are no valid batches, skip this file before we open a TX
			continue
		}

		if !scriptArgs.isNoTx {
			fmt.Println("Beginning DB transaction")
			tx, err = conn.BeginTx(ctx, nil)
			if err != nil {
				return fmt.Errorf("failed to begin transaction: %v", err)
			}
		}

		for j := range batches {
			fmt.Println(fmt.Sprintf("Executing batch [%d/%d]", j+1, len(batches)))
			_, err = conn.Exec(batches[j])
			if err != nil {
				if !isIgnoreErr(err) {
					return err
				} else {
					err = nil
				}
			}
		}

		// transaction fence handling, when used
		if tx != nil {
			fmt.Println("Committing DB transaction")
			txErr := tx.Commit()
			if txErr != nil {
				return fmt.Errorf("failed to commit transaction: %v", txErr)
			}
			tx = nil
		}

		fmt.Println(" Done")
	}

	return nil
}

func importDbs(ctx context.Context) (err error) {
	fmt.Println("-- Importing databases --")
	scripts, err := getSqlFileNames(DatabasesDir)
	if err != nil {
		return err
	}

	sArgs := defaultScriptArgs()
	sArgs.isUseDefaultSystemDb = true
	return runScripts(ctx, scripts, sArgs)
}

func importLogins(ctx context.Context) (err error) {
	fmt.Println("-- Importing Logins --")
	scripts, err := getSqlFileNames(LoginsDir)
	if err != nil {
		return err
	}

	sArgs := defaultScriptArgs()
	sArgs.isUseDefaultSystemDb = true
	return runScripts(ctx, scripts, sArgs)
}

func importUsers(ctx context.Context) (err error) {
	fmt.Println("-- Importing Users --")
	scripts, err := getSqlFileNames(UsersDir)
	if err != nil {
		return err
	}

	sArgs := defaultScriptArgs()
	sArgs.isUseDefaultSystemDb = true
	return runScripts(ctx, scripts, sArgs)
}

func importSchemas(ctx context.Context) (err error) {
	fmt.Println("-- Importing Schemas --")
	scripts, err := getSqlFileNames(SchemasDir)
	if err != nil {
		return err
	}

	return runScripts(ctx, scripts, defaultScriptArgs())
}

func importTables(ctx context.Context) (err error) {
	fmt.Println("-- Importing Tables --")
	scripts, err := getSqlFileNames(TablesDir)
	if err != nil {
		return err
	}

	return runScripts(ctx, scripts, defaultScriptArgs())
}

func importViews(ctx context.Context) (err error) {
	fmt.Println("-- Importing Views --")
	scripts, err := getSqlFileNames(ViewsDir)
	if err != nil {
		return err
	}

	return runScripts(ctx, scripts, defaultScriptArgs())
}

func importStoredProcs(ctx context.Context) (err error) {
	fmt.Println("-- Importing Stored Procedures --")
	scripts, err := getSqlFileNames(StoredProcsDir)
	if err != nil {
		return err
	}

	sArgs := defaultScriptArgs()
	// It is advised to not use TX fences when a script contains BEGIN/COMMIT keywords; however, I'm not sure if that's
	// actually a problem here as those keywords are part of the body of the stored proc being created and not
	// being executed.  Either way, I don't think it hurts to skip the Tx Fence for Stored proc creation
	//
	// from the doc:
	// Use the APIs described in this section to manage transactions. Do not use transaction-related SQL statements such as
	// BEGIN and COMMIT directly—doing so can leave your database in an unpredictable state, especially in concurrent programs.
	// When using a transaction, take care not to call the non-transaction sql.DB methods directly, too, as those will execute
	// outside the transaction, giving your code an inconsistent view of the state of the database or even causing deadlocks.
	sArgs.isNoTx = true
	return runScripts(ctx, scripts, sArgs)
}

// getSqlFileNames returns the list of *.sql files from a given directory
func getSqlFileNames(dir string) (fileNames []string, err error) {
	return filepath.Glob(filepath.Join(dir, sqlExtPattern))
}

// splitBatches breaks an MSSQL .sql dump file into batch groups.  MSSQL dump files use "GO" statements to separate
// batches.  The GO statement is not standard SQL and is only supported inside of MS SQL Management Studio, so we
// need to parse around it.
func splitBatches(sql string) (batches []string) {
	batches = strings.Split(sql, batchTerminator)
	for i := range batches {
		batches[i] = strings.TrimSpace(batches[i])
		if batches[i] == "" {
			batches = append(batches[:i], batches[i+1:]...)
		}
	}
	return batches
}

// isIgnoreErr checks an error to see if it can be ignored; These are errors related to
// failed DROP statements after a database clean or new setup
func isIgnoreErr(err error) bool {
	if strings.HasPrefix(err.Error(), "mssql: Cannot drop the login") ||
		strings.HasPrefix(err.Error(), "mssql: Cannot drop the user") ||
		strings.HasPrefix(err.Error(), "mssql: Cannot drop the schema") ||
		strings.HasPrefix(err.Error(), "mssql: Cannot drop the index") ||
		strings.HasPrefix(err.Error(), "mssql: Cannot drop the view") ||
		strings.HasPrefix(err.Error(), "mssql: Cannot drop the procedure") ||
		// table objects have alter statements before create
		strings.HasPrefix(err.Error(), "mssql: Cannot find the object") {
		return true
	}
	return false
}
