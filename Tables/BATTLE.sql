/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_11]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_10]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_9]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_8]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_7]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_6]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_5]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_4]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_3]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_2]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byArea_1_1]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byKarusAdvantage_1]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byElmoAdvantage_1]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byKarusArea_1]
GO
ALTER TABLE [BATTLE] DROP CONSTRAINT [DF_BATTLE_byElmoArea_1]
GO
/****** Object:  Table [BATTLE]    Script Date: 26/05/2025 7:18:35 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BATTLE]') AND type in (N'U'))
DROP TABLE [BATTLE]
GO
/****** Object:  Table [BATTLE]    Script Date: 26/05/2025 7:18:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BATTLE](
	[sIndex] [smallint] NOT NULL,
	[byNation] [tinyint] NOT NULL,
	[strUserName] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[byElmoArea] [tinyint] NOT NULL,
	[byKarusArea] [tinyint] NOT NULL,
	[byElmoAdvantage] [tinyint] NOT NULL,
	[byKarusAdvantage] [tinyint] NOT NULL,
	[byArea_1] [tinyint] NOT NULL,
	[byArea_2] [tinyint] NOT NULL,
	[byArea_3] [tinyint] NOT NULL,
	[byArea_4] [tinyint] NOT NULL,
	[byArea_5] [tinyint] NOT NULL,
	[byArea_6] [tinyint] NOT NULL,
	[byArea_7] [tinyint] NOT NULL,
	[byArea_8] [tinyint] NOT NULL,
	[byArea_9] [tinyint] NOT NULL,
	[byArea_10] [tinyint] NOT NULL,
	[byArea_11] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [BATTLE] VALUES (1, 1, N'GMMumma', 4, 5, 0, 6, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1)
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byElmoArea_1]  DEFAULT ((0)) FOR [byElmoArea]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byKarusArea_1]  DEFAULT ((0)) FOR [byKarusArea]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byElmoAdvantage_1]  DEFAULT ((0)) FOR [byElmoAdvantage]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byKarusAdvantage_1]  DEFAULT ((0)) FOR [byKarusAdvantage]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_1_1]  DEFAULT ((0)) FOR [byArea_1]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_2]  DEFAULT ((0)) FOR [byArea_2]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_3]  DEFAULT ((0)) FOR [byArea_3]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_4]  DEFAULT ((0)) FOR [byArea_4]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_5]  DEFAULT ((0)) FOR [byArea_5]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_6]  DEFAULT ((0)) FOR [byArea_6]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_7]  DEFAULT ((0)) FOR [byArea_7]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_8]  DEFAULT ((0)) FOR [byArea_8]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_9]  DEFAULT ((0)) FOR [byArea_9]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_10]  DEFAULT ((0)) FOR [byArea_10]
GO
ALTER TABLE [BATTLE] ADD  CONSTRAINT [DF_BATTLE_byArea_11]  DEFAULT ((0)) FOR [byArea_11]
GO
