/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [WEBPAGE_ADDRESS]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[WEBPAGE_ADDRESS]') AND type in (N'U'))
DROP TABLE [WEBPAGE_ADDRESS]
GO
/****** Object:  Table [WEBPAGE_ADDRESS]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [WEBPAGE_ADDRESS](
	[nIndex] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strWebPageAddress] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [WEBPAGE_ADDRESS] VALUES (N'1', N'ddg.gg')
GO
