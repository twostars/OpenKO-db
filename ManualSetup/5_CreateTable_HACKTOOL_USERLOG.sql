USE [Prototype]
GO

CREATE TABLE "HACKTOOL_USERLOG" (
	"strAccountID" varchar(21) NOT NULL,
	"strCharID" varchar(21) NOT NULL,
	"strHackToolName" varchar(512),
	"tWriteTime" smalldatetime NOT NULL

)