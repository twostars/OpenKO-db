USE [OpenKO]
GO

CREATE TABLE [CONCURRENT] (
	[serverid] tinyint NOT NULL,
	[zone1_count] smallint,
	[zone2_count] smallint,
	[zone3_count] smallint,
	[bz] varchar(50)
	CONSTRAINT [PK_CONCURRENT] PRIMARY KEY ([serverid])
)
GO
