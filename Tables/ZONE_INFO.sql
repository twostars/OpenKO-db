/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [ZONE_INFO]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZONE_INFO]') AND type in (N'U'))
DROP TABLE [ZONE_INFO]
GO
/****** Object:  Table [ZONE_INFO]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ZONE_INFO](
	[ServerNo] [tinyint] NOT NULL,
	[ZoneNo] [smallint] NOT NULL,
	[strZoneName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[InitX] [int] NOT NULL,
	[InitZ] [int] NOT NULL,
	[InitY] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[RoomEvent] [tinyint] NOT NULL,
	[bz] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [ZONE_INFO] VALUES (1, 1, N'karus_0730.smd', 163000, 39400, 15000, 1, 0, N'Karus')
INSERT [ZONE_INFO] VALUES (1, 2, N'elmorad_1220.smd', 1630000, 39400, 15000, 1, 0, N'Elmorad')
INSERT [ZONE_INFO] VALUES (1, 11, N'k_eslant.smd', 15000, 15000, 15000, 0, 0, N'Karus Eslant')
INSERT [ZONE_INFO] VALUES (1, 12, N'e_eslant.smd', 15000, 15000, 15000, 0, 0, N'Elmorad Eslant')
INSERT [ZONE_INFO] VALUES (1, 21, N'moradon_0826.smd', 31200, 40200, 0, 1, 0, N'Moradon')
INSERT [ZONE_INFO] VALUES (1, 30, N'siege_0722.smd', 1000, 1000, 0, 2, 0, N'Delos')
INSERT [ZONE_INFO] VALUES (1, 32, N'dungeonb_0925.smd', 1000, 1000, 0, 2, 0, N'Desperation Abyss')
INSERT [ZONE_INFO] VALUES (1, 33, N'dungeonc_1008.smd', 1000, 1000, 0, 2, 0, N'Hell Abyss')
INSERT [ZONE_INFO] VALUES (1, 48, N'clanfight48_0520.smd', 128, 123, 0, 0, 0, N'Battle Arena')
INSERT [ZONE_INFO] VALUES (1, 51, N'clanfight_b.smd', 13900, 13900, 0, 0, 0, N'Orc Prisoner Quest')
INSERT [ZONE_INFO] VALUES (1, 52, N'clanfight_b.smd', 13900, 13900, 0, 0, 0, N'Blood Don Quest')
INSERT [ZONE_INFO] VALUES (1, 53, N'clanfight_b.smd', 13900, 13900, 0, 0, 0, N'Goblin Quest')
INSERT [ZONE_INFO] VALUES (1, 54, N'clanfight_b.smd', 13900, 13900, 0, 0, 0, N'Cape Quest')
INSERT [ZONE_INFO] VALUES (1, 55, N'clanfight_b.smd', 13900, 13900, 0, 0, 0, N'Forgotten Temple')
INSERT [ZONE_INFO] VALUES (1, 91, N'moradon_0826.smd', 15000, 15000, 15000, 0, 0, N'Monster Storage')
INSERT [ZONE_INFO] VALUES (1, 101, N'battle1_1111.smd', 1000, 1000, 1000, 2, 101, N'Lunar War')
INSERT [ZONE_INFO] VALUES (1, 102, N'battle2_0722.smd', 1000, 1000, 1000, 2, 102, N'Dark Lunar War')
INSERT [ZONE_INFO] VALUES (1, 201, N'freezone_1217.smd', 1000, 1000, 0, 2, 0, N'Colony Zone')
INSERT [ZONE_INFO] VALUES (1, 103, N'battle3_1111.smd', 1000, 1000, 0, 2, 103, N'New War')
INSERT [ZONE_INFO] VALUES (1, 111, N'battle1_1111.smd', 1000, 1000, 0, 2, 0, N'Snow War')
GO
