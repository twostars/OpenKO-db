/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [MAKE_ITEM_LARECODE] DROP CONSTRAINT [DF_MAKE_ITEM_LARECODE_sGereralItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] DROP CONSTRAINT [DF_MAKE_ITEM_LARECODE_sMagicItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] DROP CONSTRAINT [DF_MAKE_ITEM_LARECODE_sLareItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] DROP CONSTRAINT [DF_MAKE_ITEM_LARECODE_sUpgradeItem_1]
GO
/****** Object:  Table [MAKE_ITEM_LARECODE]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAKE_ITEM_LARECODE]') AND type in (N'U'))
DROP TABLE [MAKE_ITEM_LARECODE]
GO
/****** Object:  Table [MAKE_ITEM_LARECODE]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAKE_ITEM_LARECODE](
	[byLevelGrade] [tinyint] NOT NULL,
	[sUpgradeItem] [smallint] NOT NULL,
	[sLareItem] [smallint] NOT NULL,
	[sMagicItem] [smallint] NOT NULL,
	[sGereralItem] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAKE_ITEM_LARECODE] VALUES (0, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (1, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (2, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (3, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (4, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (5, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (6, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (7, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (8, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (9, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (10, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (11, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (12, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (13, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (14, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (15, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (16, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (17, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (18, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (19, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (20, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (21, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (22, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (23, 500, 250, 250, 0)
INSERT [MAKE_ITEM_LARECODE] VALUES (24, 500, 250, 250, 0)
GO
ALTER TABLE [MAKE_ITEM_LARECODE] ADD  CONSTRAINT [DF_MAKE_ITEM_LARECODE_sUpgradeItem_1]  DEFAULT (0) FOR [sUpgradeItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] ADD  CONSTRAINT [DF_MAKE_ITEM_LARECODE_sLareItem]  DEFAULT (0) FOR [sLareItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] ADD  CONSTRAINT [DF_MAKE_ITEM_LARECODE_sMagicItem]  DEFAULT (0) FOR [sMagicItem]
GO
ALTER TABLE [MAKE_ITEM_LARECODE] ADD  CONSTRAINT [DF_MAKE_ITEM_LARECODE_sGereralItem]  DEFAULT (0) FOR [sGereralItem]
GO
