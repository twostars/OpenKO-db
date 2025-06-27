USE [KN_online]
GO

CREATE TABLE [ZONE_INFO] (
	[ServerNo] tinyint NOT NULL,
	[ZoneNo] smallint NOT NULL,
	[strZoneName] varchar(50) NOT NULL,
	[InitX] int NOT NULL,
	[InitZ] int NOT NULL,
	[InitY] int NOT NULL,
	[Type] tinyint NOT NULL,
	[RoomEvent] tinyint NOT NULL,
	[bz] varchar(50)
	CONSTRAINT [PK_ZONE_INFO] PRIMARY KEY CLUSTERED ([ServerNo], [ZoneNo])
)
GO
