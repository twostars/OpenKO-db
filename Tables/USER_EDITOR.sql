/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [USER_EDITOR] DROP CONSTRAINT [DF_USER_EDITOR_EditorTime]
GO
/****** Object:  Table [USER_EDITOR]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USER_EDITOR]') AND type in (N'U'))
DROP TABLE [USER_EDITOR]
GO
/****** Object:  Table [USER_EDITOR]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_EDITOR](
	[strCharID] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strAccountID] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOpID] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOpIP] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserValue] [char](600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserValue] [char](600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserSkill] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserSkill] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserItem] [char](400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserItem] [char](400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldWHValue] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewWHValue] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldWHItem] [char](1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewWHItem] [char](1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EditorTime] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [USER_EDITOR] ADD  CONSTRAINT [DF_USER_EDITOR_EditorTime]  DEFAULT (getdate()) FOR [EditorTime]
GO
