/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE5]    Script Date: 26/05/2025 7:15:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE5]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE5]
GO
/****** Object:  Table [MAGIC_TYPE5]    Script Date: 26/05/2025 7:15:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE5](
	[iNum] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] [tinyint] NOT NULL,
	[ExpRecover] [tinyint] NOT NULL,
	[NeedStone] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE5] VALUES (107736, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (107748, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (108736, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (108748, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (111525, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (111535, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (111733, N'Resurrection of love', N'', 3, 60, 4)
INSERT [MAGIC_TYPE5] VALUES (111742, N'Resurrection of grace', N'', 3, 70, 10)
INSERT [MAGIC_TYPE5] VALUES (111754, N'Resurrection of favors', N'', 3, 80, 30)
INSERT [MAGIC_TYPE5] VALUES (112525, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (112535, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (112671, N'??? ?? ??seof favors', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (112733, N'Resurrection of love', N'', 3, 60, 4)
INSERT [MAGIC_TYPE5] VALUES (112742, N'Resurrection of grace', N'', 3, 70, 10)
INSERT [MAGIC_TYPE5] VALUES (112754, N'Resurrection of favors', N'', 3, 80, 30)
INSERT [MAGIC_TYPE5] VALUES (112805, N'Treat Curse', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (207736, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (207748, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (208736, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (208748, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (211525, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (211535, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (211733, N'Resurrection of love', N'', 3, 60, 4)
INSERT [MAGIC_TYPE5] VALUES (211742, N'Resurrection of grace', N'', 3, 70, 10)
INSERT [MAGIC_TYPE5] VALUES (211754, N'Resurrection of favors', N'', 3, 80, 30)
INSERT [MAGIC_TYPE5] VALUES (212525, N'Cure curse', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (212535, N'Cure disease', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (212671, N'??? ?? ??seof favors', N'', 2, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (212733, N'Resurrection of love', N'', 3, 60, 4)
INSERT [MAGIC_TYPE5] VALUES (212742, N'Resurrection of grace', N'', 3, 70, 10)
INSERT [MAGIC_TYPE5] VALUES (212754, N'Resurrection of favors', N'', 3, 80, 30)
INSERT [MAGIC_TYPE5] VALUES (212805, N'Treat Curse', N'', 1, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (300133, N'???? ?? ?? of favors', N'', 5, 0, 0)
INSERT [MAGIC_TYPE5] VALUES (480001, N'Stone of Resurrection', N'', 4, 60, 0)
INSERT [MAGIC_TYPE5] VALUES (480002, N'Resurrection of Blessing', N'', 4, 50, 0)
INSERT [MAGIC_TYPE5] VALUES (480003, N'??? 60% ?? ??? Blessing', N'', 4, 60, 0)
INSERT [MAGIC_TYPE5] VALUES (480004, N'??? 100% ?? ???Blessing', N'', 4, 100, 0)
INSERT [MAGIC_TYPE5] VALUES (480005, N'Resurrection of Blessing', N'', 4, 50, 0)
GO
