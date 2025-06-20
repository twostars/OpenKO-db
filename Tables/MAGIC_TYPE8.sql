/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE8]    Script Date: 26/05/2025 7:15:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE8]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE8]
GO
/****** Object:  Table [MAGIC_TYPE8]    Script Date: 26/05/2025 7:15:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE8](
	[iNum] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Target] [tinyint] NOT NULL,
	[Radius] [smallint] NOT NULL,
	[WarpType] [tinyint] NOT NULL,
	[ExpRecover] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE8] VALUES (105650, N'descent', N'', 1, 30, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (106650, N'descent', N'', 1, 30, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (108770, N'??? ????', N'', 1, 40, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (109004, N'summon friend', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (109015, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (109035, N'Escape', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (110004, N'summon friend', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (110015, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (110035, N'Escape', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (111700, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (112700, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (205650, N'descent', N'', 1, 30, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (206650, N'descent', N'', 1, 30, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (208770, N'??? ????iend', N'', 1, 40, 25, 0)
INSERT [MAGIC_TYPE8] VALUES (209004, N'summon friend', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (209015, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (209035, N'Escape', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (210004, N'summon friend', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (210015, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (210035, N'Escape', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (211700, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (212700, N'Gate', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (490042, N'Call clan members', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (490050, N'Call party', N'', 1, 10000, 12, 0)
INSERT [MAGIC_TYPE8] VALUES (490088, N'Monster Summons Staff', N'', 1, 10000, 21, 0)
INSERT [MAGIC_TYPE8] VALUES (490093, N'Monster Summons Staff', N'', 1, 10000, 21, 2)
INSERT [MAGIC_TYPE8] VALUES (490096, N'Monster Summons Staff', N'', 1, 10000, 21, 1)
INSERT [MAGIC_TYPE8] VALUES (490097, N'Monster Summons Staff', N'', 1, 10000, 21, 0)
INSERT [MAGIC_TYPE8] VALUES (500022, N'???? ???? ???s Staff', N'', 1, 10000, 1, 0)
INSERT [MAGIC_TYPE8] VALUES (500038, N'???? ??? ???s Staff', N'', 1, 10000, 25, 0)
GO
