/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAKE_ITEM_GRADECODE]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAKE_ITEM_GRADECODE]') AND type in (N'U'))
DROP TABLE [MAKE_ITEM_GRADECODE]
GO
/****** Object:  Table [MAKE_ITEM_GRADECODE]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAKE_ITEM_GRADECODE](
	[byItemIndex] [tinyint] NOT NULL,
	[byGrade_1] [smallint] NOT NULL,
	[byGrade_2] [smallint] NULL,
	[byGrade_3] [smallint] NULL,
	[byGrade_4] [smallint] NULL,
	[byGrade_5] [smallint] NULL,
	[byGrade_6] [smallint] NULL,
	[byGrade_7] [smallint] NULL,
	[byGrade_8] [smallint] NULL,
	[byGrade_9] [smallint] NULL
) ON [PRIMARY]
GO
INSERT [MAKE_ITEM_GRADECODE] VALUES (1, 800, 200, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (2, 200, 800, 0, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (3, 100, 400, 500, 0, 0, 0, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (4, 100, 100, 400, 400, 0, 0, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (5, 0, 100, 200, 400, 300, 0, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (6, 0, 0, 400, 300, 200, 100, 0, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (7, 0, 0, 75, 400, 300, 200, 25, 0, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (8, 0, 0, 0, 145, 400, 400, 50, 5, 0)
INSERT [MAKE_ITEM_GRADECODE] VALUES (9, 0, 0, 0, 0, 225, 688, 75, 10, 2)
GO
