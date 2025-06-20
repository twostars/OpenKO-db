/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [PROGRAMLIST_LOG] DROP CONSTRAINT [DF_PROGRAMLIST_LOG_tWriteTime]
GO
/****** Object:  Table [PROGRAMLIST_LOG]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PROGRAMLIST_LOG]') AND type in (N'U'))
DROP TABLE [PROGRAMLIST_LOG]
GO
/****** Object:  Table [PROGRAMLIST_LOG]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROGRAMLIST_LOG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[strAccountID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strHackToolName] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tWriteTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_PROGRAMLIST_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [PROGRAMLIST_LOG] ADD  CONSTRAINT [DF_PROGRAMLIST_LOG_tWriteTime]  DEFAULT (getdate()) FOR [tWriteTime]
GO
