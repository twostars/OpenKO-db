/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAKE_DEFENSIVE]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAKE_DEFENSIVE]') AND type in (N'U'))
DROP TABLE [MAKE_DEFENSIVE]
GO
/****** Object:  Table [MAKE_DEFENSIVE]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAKE_DEFENSIVE](
	[byLevel] [tinyint] NOT NULL,
	[sClass_1] [smallint] NULL,
	[sClass_2] [smallint] NULL,
	[sClass_3] [smallint] NULL,
	[sClass_4] [smallint] NULL,
	[sClass_5] [smallint] NULL,
	[sClass_6] [smallint] NULL,
	[sClass_7] [smallint] NULL
) ON [PRIMARY]
GO
INSERT [MAKE_DEFENSIVE] VALUES (0, 1000, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (1, 600, 400, 0, 0, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (2, 400, 600, 0, 0, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (3, 200, 700, 100, 0, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (4, 100, 700, 200, 0, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (5, 100, 500, 300, 100, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (6, 100, 300, 400, 200, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (7, 0, 100, 400, 500, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (8, 0, 100, 400, 500, 0, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (9, 0, 100, 350, 500, 50, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (10, 0, 100, 350, 500, 50, 0, 0)
INSERT [MAKE_DEFENSIVE] VALUES (11, 0, 50, 300, 500, 100, 50, 0)
INSERT [MAKE_DEFENSIVE] VALUES (12, 0, 50, 300, 500, 100, 50, 0)
INSERT [MAKE_DEFENSIVE] VALUES (13, 0, 0, 250, 500, 150, 100, 0)
INSERT [MAKE_DEFENSIVE] VALUES (14, 0, 0, 250, 500, 150, 100, 0)
INSERT [MAKE_DEFENSIVE] VALUES (15, 0, 0, 200, 500, 200, 100, 0)
INSERT [MAKE_DEFENSIVE] VALUES (16, 0, 0, 150, 500, 200, 100, 50)
INSERT [MAKE_DEFENSIVE] VALUES (17, 0, 0, 150, 500, 200, 100, 50)
INSERT [MAKE_DEFENSIVE] VALUES (18, 0, 0, 100, 500, 200, 100, 100)
INSERT [MAKE_DEFENSIVE] VALUES (19, 0, 0, 100, 500, 200, 100, 100)
GO
