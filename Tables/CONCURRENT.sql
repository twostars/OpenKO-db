/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [CONCURRENT]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CONCURRENT]') AND type in (N'U'))
DROP TABLE [CONCURRENT]
GO
/****** Object:  Table [CONCURRENT]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CONCURRENT](
	[serverid] [tinyint] NOT NULL,
	[zone1_count] [smallint] NULL,
	[zone2_count] [smallint] NULL,
	[zone3_count] [smallint] NULL,
	[bz] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [CONCURRENT] VALUES (1, 0, 2, 3, NULL)
INSERT [CONCURRENT] VALUES (2, 3, 4, 5, NULL)
GO
