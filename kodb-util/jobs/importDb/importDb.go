package importDb

import (
	"database/sql"
	"fmt"
	"github.com/softlandia/cpd"
	"kodb-util/config"
	"kodb-util/mssql"
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

	UseKoDbSqlFmt   = "USE [%s]"
	sqlExtPattern   = "*.sql"
	batchTerminator = "\nGO"
)

func ImportDb() (err error) {
	fmt.Println("-- Import --")
	driver := mssql.NewMssqlDbDriver()
	defer func() {
		driver.CloseConnection()
	}()

	conn, err := driver.GetConnection()
	if err != nil {
		return err
	}

	err = importDbs(conn)
	if err != nil {
		return err
	}

	err = importLogins(conn)
	if err != nil {
		return err
	}

	err = importUsers(conn)
	if err != nil {
		return err
	}

	err = importSchemas(conn)
	if err != nil {
		return err
	}

	err = importTables(conn)
	if err != nil {
		return err
	}

	err = importViews(conn)
	if err != nil {
		return err
	}

	err = importStoredProcs(conn)
	if err != nil {
		return err
	}

	return nil
}

func runScripts(conn *sql.DB, fileNames []string, isUtf16 bool, isUseKodb bool) (err error) {
	fmt.Println(fmt.Sprintf("Found %d scripts", len(fileNames)))

	for i := range fileNames {
		fmt.Println(fmt.Sprintf("Reading %s", fileNames[i]))
		sqlBytes, err := os.ReadFile(fileNames[i])
		if err != nil {
			return err
		}

		sqlStr := string(sqlBytes)
		if isUtf16 {
			sqlStr = cpd.DecodeUTF16le(sqlStr)
		}

		fmt.Println(fmt.Sprintf("Running %s", fileNames[i]))
		batches := splitBatches(sqlStr)
		if isUseKodb {
			batches = append([]string{fmt.Sprintf(UseKoDbSqlFmt, config.GetConfig().DatabaseConfig.DbName)}, batches...)
		}
		fmt.Println(fmt.Sprintf("file contains %d batches", len(batches)))
		for j := range batches {
			fmt.Println(fmt.Sprintf("Executing batch [%d/%d]", j+1, len(batches)))
			_, err = conn.Exec(batches[j])
			if err != nil && !isIgnoreErr(err) {
				return err
			}
		}
		fmt.Println(" Done")
	}

	return nil
}

func importDbs(conn *sql.DB) (err error) {
	fmt.Println("-- Importing databases --")
	scripts, err := getSqlFileNames(DatabasesDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, false, false)
}

func importLogins(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Logins --")
	scripts, err := getSqlFileNames(LoginsDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, true, false)
}

func importUsers(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Users --")
	scripts, err := getSqlFileNames(UsersDir)
	if err != nil {
		return err
	}
	return runScripts(conn, scripts, true, false)
}

func importSchemas(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Schemas --")
	scripts, err := getSqlFileNames(SchemasDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, true, false)
}

func importTables(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Tables --")
	scripts, err := getSqlFileNames(TablesDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, true, true)
}

func importViews(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Views --")
	scripts, err := getSqlFileNames(ViewsDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, true, true)
}

func importStoredProcs(conn *sql.DB) (err error) {
	fmt.Println("-- Importing Stored Procedures --")
	scripts, err := getSqlFileNames(StoredProcsDir)
	if err != nil {
		return err
	}

	return runScripts(conn, scripts, true, true)
}

func getSqlFileNames(dir string) (fileNames []string, err error) {
	return filepath.Glob(filepath.Join(dir, sqlExtPattern))
}

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
