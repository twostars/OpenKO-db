/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE9]    Script Date: 26/05/2025 7:15:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE9]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE9]
GO
/****** Object:  Table [MAGIC_TYPE9]    Script Date: 26/05/2025 7:15:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE9](
	[iNum] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ValidGroup] [tinyint] NOT NULL,
	[NationChange] [tinyint] NOT NULL,
	[MonsterNum] [smallint] NOT NULL,
	[TargetChange] [tinyint] NOT NULL,
	[StateChange] [tinyint] NOT NULL,
	[Radius] [smallint] NOT NULL,
	[Hitrate] [smallint] NOT NULL,
	[Duration] [smallint] NOT NULL,
	[AddDamage] [smallint] NOT NULL,
	[Vision] [smallint] NOT NULL,
	[NeedItem] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE9] VALUES (107645, N'Stealth', N'', 0, 0, 0, 1, 2, 0, 100, 80, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (107700, N'Hide', N'', 0, 0, 0, 1, 1, 0, 100, 40, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (107715, N'Cat''s eyes', N'', 0, 0, 0, 2, 3, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (107735, N'Lupine Eyes', N'', 0, 0, 0, 2, 4, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (108645, N'Stealth', N'', 0, 0, 0, 1, 2, 0, 100, 80, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (108700, N'Hide', N'', 0, 0, 0, 1, 1, 0, 100, 40, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (108715, N'Cat''s eyes', N'', 0, 0, 0, 2, 3, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (108735, N'Lupine Eyes', N'', 0, 0, 0, 2, 4, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (108805, N'secrecy', N'', 0, 0, 0, 1, 5, 25, 100, 30, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (207645, N'Stealth', N'', 0, 0, 0, 1, 2, 0, 100, 80, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (207700, N'Hide', N'', 0, 0, 0, 1, 1, 0, 100, 40, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (207715, N'Cat''s eyes', N'', 0, 0, 0, 2, 3, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (207735, N'Lupine Eyes', N'', 0, 0, 0, 2, 4, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (208645, N'Stealth', N'', 0, 0, 0, 1, 2, 0, 100, 80, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (208700, N'Hide', N'', 0, 0, 0, 1, 1, 0, 100, 40, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (208715, N'Cat''s eyes', N'', 0, 0, 0, 2, 3, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (208735, N'Lupine Eyes', N'', 0, 0, 0, 2, 4, 25, 100, 50, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (208805, N'secrecy', N'', 0, 0, 0, 1, 5, 25, 100, 30, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (490211, N'??? ?yyes', N'', 0, 0, 0, 2, 3, 25, 100, 30, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502001, N'??? ??(???)', N'', 0, 1, 5151, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502002, N'???? ??(???)', N'', 0, 1, 5152, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502003, N'??? ??(????)', N'', 0, 2, 5101, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502004, N'???? ??(????)', N'', 0, 2, 5102, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502005, N'??? ??(???))', N'', 0, 1, 5151, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502006, N'???? ??(???)', N'', 0, 1, 5152, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502007, N'??? ??(????)', N'', 0, 2, 5101, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502008, N'???? ??(????)', N'', 0, 2, 5102, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502009, N'??? ??(???))', N'', 0, 1, 5151, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502010, N'???? ??(???)', N'', 0, 1, 5152, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502011, N'??? ??(????)', N'', 0, 2, 5101, 3, 7, 0, 100, 3600, 0, 100, 0)
INSERT [MAGIC_TYPE9] VALUES (502012, N'???? ??(????)', N'', 0, 2, 5102, 3, 7, 0, 100, 3600, 0, 100, 0)
GO
