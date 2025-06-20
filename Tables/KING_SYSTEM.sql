/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nNationalTreasury]
GO
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nTerritoryTax]
GO
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byTerritoryTariff]
GO
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_nTribute]
GO
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byExpEvent]
GO
ALTER TABLE [KING_SYSTEM] DROP CONSTRAINT [DF_KING_SYSTEM_byNoahEvent]
GO
/****** Object:  Table [KING_SYSTEM]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KING_SYSTEM]') AND type in (N'U'))
DROP TABLE [KING_SYSTEM]
GO
/****** Object:  Table [KING_SYSTEM]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KING_SYSTEM](
	[byNation] [tinyint] NOT NULL,
	[byType] [tinyint] NOT NULL,
	[sYear] [smallint] NOT NULL,
	[byMonth] [tinyint] NOT NULL,
	[byDay] [tinyint] NOT NULL,
	[byHour] [tinyint] NOT NULL,
	[byMinute] [tinyint] NOT NULL,
	[byImType] [tinyint] NOT NULL,
	[sImYear] [smallint] NOT NULL,
	[byImMonth] [tinyint] NOT NULL,
	[byImDay] [tinyint] NOT NULL,
	[byImHour] [tinyint] NOT NULL,
	[byImMinute] [tinyint] NOT NULL,
	[byNoahEvent] [tinyint] NOT NULL,
	[byNoahEvent_Day] [tinyint] NOT NULL,
	[byNoahEvent_Hour] [tinyint] NOT NULL,
	[byNoahEvent_Minute] [tinyint] NOT NULL,
	[sNoahEvent_Duration] [smallint] NOT NULL,
	[byExpEvent] [tinyint] NOT NULL,
	[byExpEvent_Day] [tinyint] NOT NULL,
	[byExpEvent_Hour] [tinyint] NOT NULL,
	[byExpEvent_Minute] [tinyint] NOT NULL,
	[sExpEvent_Duration] [smallint] NOT NULL,
	[nTribute] [int] NOT NULL,
	[byTerritoryTariff] [tinyint] NOT NULL,
	[nTerritoryTax] [int] NOT NULL,
	[nNationalTreasury] [int] NOT NULL,
	[strKingName] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strImRequestID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [KING_SYSTEM] VALUES (1, 7, 2012, 12, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 40700, 40700, NULL, NULL)
INSERT [KING_SYSTEM] VALUES (2, 4, 2012, 12, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, N'test', NULL)
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_byNoahEvent]  DEFAULT ((0)) FOR [byNoahEvent]
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_byExpEvent]  DEFAULT ((0)) FOR [byExpEvent]
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_nTribute]  DEFAULT ((0)) FOR [nTribute]
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_byTerritoryTariff]  DEFAULT ((0)) FOR [byTerritoryTariff]
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_nTerritoryTax]  DEFAULT ((0)) FOR [nTerritoryTax]
GO
ALTER TABLE [KING_SYSTEM] ADD  CONSTRAINT [DF_KING_SYSTEM_nNationalTreasury]  DEFAULT ((0)) FOR [nNationalTreasury]
GO
