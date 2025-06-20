/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MONSTER_ITEM_TEST]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MONSTER_ITEM_TEST]') AND type in (N'U'))
DROP TABLE [MONSTER_ITEM_TEST]
GO
/****** Object:  Table [MONSTER_ITEM_TEST]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MONSTER_ITEM_TEST](
	[sIndex] [smallint] NOT NULL,
	[iItem01] [int] NULL,
	[sPersent01] [smallint] NULL,
	[iItem02] [int] NULL,
	[sPersent02] [smallint] NULL,
	[iItem03] [int] NULL,
	[sPersent03] [smallint] NULL,
	[iItem04] [int] NULL,
	[sPersent04] [smallint] NULL,
	[iItem05] [int] NULL,
	[sPersent05] [smallint] NULL
) ON [PRIMARY]
GO
