/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MONSTER_CHALLENGE]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MONSTER_CHALLENGE]') AND type in (N'U'))
DROP TABLE [MONSTER_CHALLENGE]
GO
/****** Object:  Table [MONSTER_CHALLENGE]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MONSTER_CHALLENGE](
	[sIndex] [smallint] NOT NULL,
	[bStartTime1] [tinyint] NOT NULL,
	[bStartTime2] [tinyint] NOT NULL,
	[bStartTime3] [tinyint] NOT NULL,
	[bLevelMin] [tinyint] NOT NULL,
	[bLevelMax] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MONSTER_CHALLENGE] VALUES (0, 30, 30, 30, 30, 45)
INSERT [MONSTER_CHALLENGE] VALUES (1, 30, 30, 30, 46, 59)
INSERT [MONSTER_CHALLENGE] VALUES (2, 6, 12, 20, 60, 80)
GO
