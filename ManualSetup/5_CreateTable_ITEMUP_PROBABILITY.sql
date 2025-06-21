USE [Prototype]
GO

CREATE TABLE "ITEMUP_PROBABILITY" (
	"bType" tinyint NOT NULL,
	"nMaxSuccess" smallint NOT NULL,
	"nMaxFail" smallint NOT NULL,
	"nCurSuccess" smallint NOT NULL,
	"nCurFail" smallint NOT NULL
	PRIMARY KEY ("bType")
)