/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [HERO_USER]    Script Date: 26/05/2025 7:26:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HERO_USER]') AND type in (N'U'))
DROP TABLE [HERO_USER]
GO
/****** Object:  Table [HERO_USER]    Script Date: 26/05/2025 7:26:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HERO_USER](
	[shIndex] [smallint] NOT NULL,
	[strUserID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strNation] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strClass] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strAchievement] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [HERO_USER] VALUES (2003, N'GMMumma', N'???', N'??? ???', N'????????')
INSERT [HERO_USER] VALUES (2002, N'GMMumma', N'???', N'??? ???', N'????????????')
INSERT [HERO_USER] VALUES (2001, N'GMMumma', N'???', N'??? ???', N'????????????')
GO
