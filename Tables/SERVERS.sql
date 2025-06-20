/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [SERVERS]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SERVERS]') AND type in (N'U'))
DROP TABLE [SERVERS]
GO
/****** Object:  Table [SERVERS]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SERVERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sHost] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[players] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [SERVERS] ON 

INSERT INTO [SERVERS] ([id], [sName], [sHost], [players]) VALUES (1, N'OpenKO', N'127.0.0.1', 100)
SET IDENTITY_INSERT [SERVERS] OFF
GO
