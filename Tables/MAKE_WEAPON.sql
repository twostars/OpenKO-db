/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAKE_WEAPON]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAKE_WEAPON]') AND type in (N'U'))
DROP TABLE [MAKE_WEAPON]
GO
/****** Object:  Table [MAKE_WEAPON]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAKE_WEAPON](
	[byLevel] [tinyint] NOT NULL,
	[sClass_1] [smallint] NULL,
	[sClass_2] [smallint] NULL,
	[sClass_3] [smallint] NULL,
	[sClass_4] [smallint] NULL,
	[sClass_5] [smallint] NULL,
	[sClass_6] [smallint] NULL,
	[sClass_7] [smallint] NULL,
	[sClass_8] [smallint] NULL,
	[sClass_9] [smallint] NULL,
	[sClass_10] [smallint] NULL,
	[sClass_11] [smallint] NULL,
	[sClass_12] [smallint] NULL
) ON [PRIMARY]
GO
INSERT [MAKE_WEAPON] VALUES (0, 600, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (1, 400, 500, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (2, 200, 300, 400, 100, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (3, 100, 200, 300, 300, 100, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (4, 100, 100, 200, 200, 300, 100, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (5, 50, 100, 150, 200, 300, 100, 100, 0, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (6, 50, 50, 100, 100, 400, 100, 100, 100, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (7, 10, 40, 50, 100, 200, 200, 300, 100, 0, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (8, 10, 20, 30, 40, 100, 200, 200, 300, 100, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (9, 10, 20, 30, 40, 100, 200, 200, 300, 100, 0, 0, 0)
INSERT [MAKE_WEAPON] VALUES (10, 10, 20, 30, 40, 50, 150, 200, 300, 150, 50, 0, 0)
INSERT [MAKE_WEAPON] VALUES (11, 10, 20, 30, 40, 50, 100, 200, 350, 150, 50, 0, 0)
INSERT [MAKE_WEAPON] VALUES (12, 10, 20, 30, 40, 50, 100, 150, 250, 200, 100, 50, 0)
INSERT [MAKE_WEAPON] VALUES (13, 10, 20, 30, 40, 50, 100, 150, 250, 200, 100, 50, 0)
INSERT [MAKE_WEAPON] VALUES (14, 10, 20, 30, 40, 50, 100, 100, 250, 200, 150, 50, 0)
INSERT [MAKE_WEAPON] VALUES (15, 10, 20, 30, 40, 50, 100, 100, 250, 200, 150, 50, 0)
INSERT [MAKE_WEAPON] VALUES (16, 10, 20, 30, 40, 50, 100, 100, 200, 250, 150, 50, 0)
INSERT [MAKE_WEAPON] VALUES (17, 10, 20, 30, 40, 50, 100, 100, 190, 250, 150, 50, 10)
INSERT [MAKE_WEAPON] VALUES (18, 10, 20, 30, 40, 50, 100, 100, 130, 250, 150, 100, 20)
INSERT [MAKE_WEAPON] VALUES (19, 10, 20, 30, 40, 50, 100, 100, 100, 250, 150, 100, 50)
GO
