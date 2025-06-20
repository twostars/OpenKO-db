/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE7]    Script Date: 26/05/2025 7:15:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE7]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE7]
GO
/****** Object:  Table [MAGIC_TYPE7]    Script Date: 26/05/2025 7:15:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE7](
	[nIndex] [int] NOT NULL,
	[strName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strNote] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[byValidGroup] [tinyint] NOT NULL,
	[byNatoinChange] [tinyint] NOT NULL,
	[shMonsterNum] [smallint] NOT NULL,
	[byTargetChange] [tinyint] NOT NULL,
	[byStateChange] [tinyint] NOT NULL,
	[byRadius] [tinyint] NOT NULL,
	[shHitrate] [smallint] NOT NULL,
	[shDuration] [smallint] NOT NULL,
	[shDamage] [smallint] NOT NULL,
	[byVisoin] [tinyint] NOT NULL,
	[nNeedItem] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE7] VALUES (105630, N'Binding', N'', 0, 0, 0, 1, 0, 0, 100, 9, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (105645, N'provoke', N'', 0, 0, 0, 1, 0, 30, 100, 12, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (106630, N'Binding', N'', 0, 0, 0, 1, 0, 0, 100, 9, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (106645, N'provoke', N'', 0, 0, 0, 1, 0, 30, 100, 12, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (111730, N'Sleep Wing', N'', 0, 0, 0, 2, 0, 0, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (111751, N'sleep Carpet', N'', 0, 0, 0, 2, 0, 30, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (112730, N'Sleep Wing', N'', 0, 0, 0, 2, 0, 0, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (112751, N'sleep Carpet', N'', 0, 0, 0, 2, 0, 30, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (205630, N'Binding', N'', 0, 0, 0, 1, 0, 0, 100, 9, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (205645, N'provoke', N'', 0, 0, 0, 1, 0, 30, 100, 12, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (206630, N'Binding', N'', 0, 0, 0, 1, 0, 0, 100, 9, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (206645, N'provoke', N'', 0, 0, 0, 1, 0, 30, 100, 12, 10, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (211730, N'Sleep Wing', N'', 0, 0, 0, 2, 0, 0, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (211751, N'sleep Carpet', N'', 0, 0, 0, 2, 0, 30, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (212730, N'Sleep Wing', N'', 0, 0, 0, 2, 0, 0, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (212751, N'sleep Carpet', N'', 0, 0, 0, 2, 0, 30, 100, 20, 0, 100, 0)
INSERT [MAGIC_TYPE7] VALUES (490213, N'??? ??arpet', N'', 0, 0, 0, 2, 0, 0, 100, 20, 0, 100, 0)
GO
