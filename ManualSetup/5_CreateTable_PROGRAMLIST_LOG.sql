USE [KN_online]
GO

CREATE TABLE [PROGRAMLIST_LOG] (
	[id] int NOT NULL,
	[strAccountID] varchar(21) NOT NULL,
	[strCharID] varchar(21) NOT NULL,
	[strHackToolName] varchar(1024) NOT NULL,
	[tWriteTime] smalldatetime NOT NULL
	CONSTRAINT [PK_PROGRAMLIST_LOG] PRIMARY KEY CLUSTERED ([id])
)
GO
ALTER TABLE [PROGRAMLIST_LOG] ADD CONSTRAINT [DF_PROGRAMLIST_LOG_tWriteTime] DEFAULT getdate() FOR [tWriteTime]
GO
