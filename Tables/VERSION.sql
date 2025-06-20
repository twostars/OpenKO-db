/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [VERSION]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[VERSION]') AND type in (N'U'))
DROP TABLE [VERSION]
GO
/****** Object:  Table [VERSION]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VERSION](
	[sVersion] [smallint] NOT NULL,
	[strFileName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCompressName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sHistoryVersion] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [VERSION] ([sVersion], [strFileName], [strCompressName], [sHistoryVersion]) VALUES (1299, N'patch1299.zip', N'Sohu.Com', 0)
GO
