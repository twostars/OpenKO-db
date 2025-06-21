package jsonSchema

import (
	"fmt"
	"github.com/kenner2/OpenKO-db/jsonSchema/enums/dbType"
	"github.com/kenner2/OpenKO-db/jsonSchema/enums/tsql"
)

// READ BEFORE MODIFYING:
// This project is used as a submodule for ko-codegen and kodb-util
// if you're modifying this, you'll need to add the following to the end of your
// importing go.mod to use your local changes.  Otherwise, you'll be using
// the main branch code from github
// replace github.com/kenner2/OpenKO-db => ./OpenKO-db

type TableDef struct {
	Database    dbType.DbType `json:"database"`    // Which database this table should be created inside of
	Name        string        `json:"name"`        // Table name in the database
	ClassName   string        `json:"className"`   // Code-friendly class/struct name
	Description string        `json:"description"` // Table description
	Columns     []Column      `json:"columns"`     // Columns belonging to the table
}

type Column struct {
	Name         string        `json:"name"`                   // Column name in the database
	PropertyName string        `json:"propertyName"`           // Code-friendly property name
	Description  string        `json:"description"`            // Property description
	Type         tsql.TSqlType `json:"type"`                   // Supported TSQL Type
	IsPrimaryKey bool          `json:"isPrimaryKey,omitempty"` // Is this column part of the table's Primary Key?
	DefaultValue string        `json:"defaultValue,omitempty"` // Default value that should be assigned to the property
	AllowNull    bool          `json:"allowNull,omitempty"`    // Can the column's value be null?
	Length       int           `json:"length,omitempty"`       // length specifier for array types
	Enums        []Enum        `json:"enums,omitempty"`        // array of enumerated values
}

type Enum struct {
	Name    string      `json:"name"`
	Value   interface{} `json:"value"`
	Comment string      `json:"comment"`
}

func (this *Column) GormType() string {
	if this.Length > 0 {
		return fmt.Sprintf("%s(%d)", this.Type, this.Length)
	}
	return string(this.Type)
}
