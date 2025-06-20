/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [HOME]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HOME]') AND type in (N'U'))
DROP TABLE [HOME]
GO
/****** Object:  Table [HOME]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HOME](
	[Nation] [tinyint] NOT NULL,
	[ElmoZoneX] [int] NOT NULL,
	[ElmoZoneZ] [int] NOT NULL,
	[ElmoZoneLX] [tinyint] NOT NULL,
	[ElmoZoneLZ] [tinyint] NOT NULL,
	[KarusZoneX] [int] NOT NULL,
	[KarusZoneZ] [int] NOT NULL,
	[KarusZoneLX] [tinyint] NOT NULL,
	[KarusZoneLZ] [tinyint] NOT NULL,
	[FreeZoneX] [int] NOT NULL,
	[FreeZoneZ] [int] NOT NULL,
	[FreeZoneLX] [tinyint] NOT NULL,
	[FreeZoneLZ] [tinyint] NOT NULL,
	[BattleZoneX] [int] NOT NULL,
	[BattleZoneZ] [int] NOT NULL,
	[BattleZoneLX] [tinyint] NOT NULL,
	[BattleZoneLZ] [tinyint] NOT NULL,
	[BattleZone2X] [int] NOT NULL,
	[BattleZone2Z] [int] NOT NULL,
	[BattleZone2LX] [tinyint] NOT NULL,
	[BattleZone2LZ] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [HOME] VALUES (2, 1595, 412, 15, 15, 1859, 170, 10, 10, 193, 898, 10, 10, 113, 771, 5, 5, 974, 974, 5, 5)
INSERT [HOME] VALUES (1, 219, 1859, 15, 15, 441, 1625, 10, 10, 848, 128, 10, 10, 820, 98, 5, 5, 48, 48, 5, 5)
GO
