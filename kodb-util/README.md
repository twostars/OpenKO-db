# kodb-util
`kodb-util` is a database utility tool created to help in the development of the OpenKO project.

The utility aims to:

1. Create/Import the OpenKO database, users, and stored procedures in the OpenKO-db project.
2. TODO: Update the files in the OpenKO-db project via extract functions.

## Program configuration
Configure your database connection information in `config/config.yaml`; As this file is on gitignore, a template is provided in `config/config.yaml.template`

This utility mutates the `knight` user as part of its import and export functionality.  For local development you 
can use your `sa` login; otherwise you'll need to configure a user with similar permissions. 

## Dependencies
This utility is programmed with Go 1.24+.  You'll need to install the language and add it to your PATH. See https://go.dev/doc/install

If Go is correctly installed on your path, you should be able to run `go version` in your terminal and get version
information output:
```
PS C:\> go version
go version go1.24.1 windows/amd64
```

The following commands assume that you have a terminal open in the root folder of the project.

To download project dependencies, run:
```shell
go mod download
```

To run the application, run:
```shell
go run kodb-util.go
```

Without any arguments, you should get a usage prompt like this:
```
|---------------------------|
| OpenKO Database Utilities |
|---------------------------|
No arguments provided:
Usage of kodb-util.exe:
  -clean
        Clean drops the databaseConfig.dbname database and removes the knight user
  -import
        Runs clean and imports OpenKO-db files
```

## Building the utility program
In order to build `kodb-util.exe`, run the following command in this directory:
```shell
go build
```
## TODOs
* Export functionality