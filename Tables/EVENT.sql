/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [EVENT]    Script Date: 26/05/2025 7:21:20 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EVENT]') AND type in (N'U'))
DROP TABLE [EVENT]
GO
/****** Object:  Table [EVENT]    Script Date: 26/05/2025 7:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EVENT](
	[ZoneNum] [tinyint] NOT NULL,
	[EventNum] [smallint] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Cond1] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cond2] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cond3] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cond4] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cond5] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Exec1] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Exec2] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Exec3] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Exec4] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Exec5] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [EVENT] VALUES (2, 2001, 1, N'0', N'0', N'0', N'0', N'0', N'101', N'95', N'886', N'0', N'0')
INSERT [EVENT] VALUES (202, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'123', N'1150', N'0', N'0')
INSERT [EVENT] VALUES (202, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'1933', N'1708', N'0', N'0')
INSERT [EVENT] VALUES (111, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'441', N'1625', N'0', N'0')
INSERT [EVENT] VALUES (1, 1003, 1, N'0', N'0', N'0', N'0', N'0', N'103', N'165', N'193', N'0', N'0')
INSERT [EVENT] VALUES (2, 2003, 1, N'0', N'0', N'0', N'0', N'0', N'103', N'829', N'810', N'0', N'0')
INSERT [EVENT] VALUES (101, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'219', N'1859', N'0', N'0')
INSERT [EVENT] VALUES (1, 1001, 1, N'0', N'0', N'0', N'0', N'0', N'101', N'837', N'168', N'0', N'0')
INSERT [EVENT] VALUES (201, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'1670', N'370', N'0', N'0')
INSERT [EVENT] VALUES (201, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'354', N'1610', N'0', N'0')
INSERT [EVENT] VALUES (2, 2011, 1, N'0', N'0', N'0', N'0', N'0', N'111', N'864', N'957', N'0', N'0')
INSERT [EVENT] VALUES (1, 1031, 1, N'0', N'0', N'0', N'0', N'0', N'11', N'486', N'557', N'0', N'0')
INSERT [EVENT] VALUES (203, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'123', N'1150', N'0', N'0')
INSERT [EVENT] VALUES (2, 1022, 1, N'0', N'0', N'0', N'0', N'0', N'111', N'900', N'900', N'0', N'0')
INSERT [EVENT] VALUES (1, 1002, 1, N'0', N'0', N'0', N'0', N'0', N'102', N'160', N'67', N'0', N'0')
INSERT [EVENT] VALUES (2, 2002, 1, N'0', N'0', N'0', N'0', N'0', N'102', N'864', N'957', N'0', N'0')
INSERT [EVENT] VALUES (103, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'219', N'1859', N'0', N'0')
INSERT [EVENT] VALUES (103, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'1859', N'170', N'0', N'0')
INSERT [EVENT] VALUES (102, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'1859', N'170', N'0', N'0')
INSERT [EVENT] VALUES (111, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'1595', N'412', N'0', N'0')
INSERT [EVENT] VALUES (1, 1021, 1, N'0', N'0', N'0', N'0', N'0', N'111', N'143', N'73', N'0', N'0')
INSERT [EVENT] VALUES (101, 1012, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'1859', N'170', N'0', N'0')
INSERT [EVENT] VALUES (102, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'219', N'1859', N'0', N'0')
INSERT [EVENT] VALUES (1, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'111', N'160', N'67', N'0', N'0')
INSERT [EVENT] VALUES (2, 2031, 1, N'0', N'0', N'0', N'0', N'0', N'12', N'486', N'557', N'0', N'0')
INSERT [EVENT] VALUES (203, 1011, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'1933', N'1708', N'0', N'0')
INSERT [EVENT] VALUES (11, 1131, 1, N'0', N'0', N'0', N'0', N'0', N'1', N'1365', N'1841', N'0', N'0')
INSERT [EVENT] VALUES (12, 1231, 1, N'0', N'0', N'0', N'0', N'0', N'2', N'678', N'194', N'0', N'0')
GO
