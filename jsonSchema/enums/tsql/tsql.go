package tsql

type TSqlType string

// doc: https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver17#binary-strings
const (
	TinyInt       TSqlType = "tinyint"       //uint8
	SmallInt      TSqlType = "smallint"      //int16
	Int           TSqlType = "int"           // int32
	BigInt        TSqlType = "bigint"        // int64
	Float         TSqlType = "float"         // float64 but value interpretation depends on (n)
	Real          TSqlType = "real"          // float32
	Char          TSqlType = "char"          // byte, fixed length
	Varchar       TSqlType = "varchar"       // byte, variable length
	NChar         TSqlType = "nchar"         // unicode byte, fixed length
	NVarchar      TSqlType = "nvarchar"      // unicode byte, variable length
	Binary        TSqlType = "binary"        // fixed length byte array
	VarBinary     TSqlType = "varbinary"     // variable-length byte array
	SmallDateTime TSqlType = "smalldatetime" // 1900-01-01 00:00:00; Storage takes 4 bytes
)

/* Notes
May have issues with the float type.  AFAIK there aren't any instances of float(24) to reduce size, however,
in most programming languages a float64 is -1.7e+308 to +1.7e+308
tsql float is - 1.79E+308 to -2.23E-308, 0 and 2.23E-308 to 1.79E+308
*/
