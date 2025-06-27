USE [KN_online]
GO

CREATE TABLE [USER_EDITOR_ITEM] (
	[strCharID] varchar(21) NOT NULL,
	[strAccountID] varchar(21) NOT NULL,
	[strOpID] varchar(21) NOT NULL,
	[strOpIP] varchar(21) NOT NULL,
	[sDBIndex] smallint NOT NULL,
	[sPos] smallint NOT NULL,
	[byType] tinyint NOT NULL,
	[nItemID1] int NOT NULL,
	[nItemID2] int NOT NULL,
	[UpdateTime] smalldatetime
)
GO
