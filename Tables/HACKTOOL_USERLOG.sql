/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [HACKTOOL_USERLOG] DROP CONSTRAINT [DF_HACKTOOL_USERLOG_tWriteTime]
GO
/****** Object:  Table [HACKTOOL_USERLOG]    Script Date: 26/05/2025 7:24:12 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HACKTOOL_USERLOG]') AND type in (N'U'))
DROP TABLE [HACKTOOL_USERLOG]
GO
/****** Object:  Table [HACKTOOL_USERLOG]    Script Date: 26/05/2025 7:24:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HACKTOOL_USERLOG](
	[strAccountID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strHackToolName] [varchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tWriteTime] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [HACKTOOL_USERLOG] ADD  CONSTRAINT [DF_HACKTOOL_USERLOG_tWriteTime]  DEFAULT (getdate()) FOR [tWriteTime]
GO
