USE [OpenKO]
GO

CREATE TABLE [SERVERS] (
	[id] int NOT NULL,
	[sName] varchar(64) NOT NULL,
	[sHost] varchar(64) NOT NULL,
	[players] int NOT NULL
	CONSTRAINT [PK_SERVERS] PRIMARY KEY ([id])
)
GO
