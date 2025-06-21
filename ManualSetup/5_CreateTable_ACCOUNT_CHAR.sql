USE [Prototype]
GO

CREATE TABLE "ACCOUNT_CHAR" (
	"strAccountID" varchar(21) NOT NULL,
	"bNation" tinyint NOT NULL,
	"bCharNum" tinyint NOT NULL,
	"strCharID1" varchar(21),
	"strCharID2" varchar(21),
	"strCharID3" varchar(21)
	PRIMARY KEY ("strAccountID")
)