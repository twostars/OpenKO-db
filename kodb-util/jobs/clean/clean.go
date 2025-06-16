package clean

import (
	"fmt"
	"kodb-util/config"
	"kodb-util/mssql"
	"strings"
)

const (
	dropUserSql          = "USE [master] DROP LOGIN [knight]"
	dropKnOnlineDbSqlFmt = "DROP DATABASE IF EXISTS [%s]"
)

// Clean will remove any existing KN_online database and knight user from an mssql instance
func Clean() (err error) {
	fmt.Println("-- Clean --")
	driver := mssql.NewMssqlDbDriver()
	defer func() {
		driver.CloseConnection()
	}()

	conn, err := driver.GetConnection()
	if err != nil {
		return err
	}

	// Drop the "knight" user
	fmt.Print("Dropping knight user... ")
	_, err = conn.Exec(dropUserSql)
	if err != nil {
		// ignore failed drop error - user may not exist.
		if !strings.HasPrefix(err.Error(), "mssql: Cannot drop the login") {
			return err
		}
		fmt.Print(" Not found.")
		err = nil
	}
	fmt.Println(" Done")

	fmt.Print(fmt.Sprintf("Dropping %s database... ", config.GetConfig().DatabaseConfig.DbName))
	_, err = conn.Exec(fmt.Sprintf(dropKnOnlineDbSqlFmt, config.GetConfig().DatabaseConfig.DbName))
	if err != nil {
		return err
	}
	fmt.Println(" Done")

	return err
}
