USE [OpenKO]
GO

CREATE TABLE [USER_EDITOR_ITEM] (
	[strCharID] char(21) NOT NULL,
	[strAccountID] char(21) NOT NULL,
	[strOpID] char(21) NOT NULL,
	[strOpIP] char(21) NOT NULL,
	[sDBIndex] smallint NOT NULL,
	[sPos] smallint NOT NULL,
	[byType] tinyint NOT NULL,
	[nItemID1] int NOT NULL,
	[nItemID2] int NOT NULL,
	[UpdateTime] smalldatetime

)
GO
