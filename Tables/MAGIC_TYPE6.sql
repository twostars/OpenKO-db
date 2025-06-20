/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE6]    Script Date: 26/05/2025 7:12:21 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE6]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE6]
GO
/****** Object:  Table [MAGIC_TYPE6]    Script Date: 26/05/2025 7:12:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE6](
	[iNum] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Size] [smallint] NOT NULL,
	[TransformID] [smallint] NOT NULL,
	[Duration] [smallint] NOT NULL,
	[MaxHp] [smallint] NOT NULL,
	[MaxMp] [smallint] NOT NULL,
	[Speed] [tinyint] NOT NULL,
	[AttackSpeed] [smallint] NOT NULL,
	[TotalHit] [smallint] NOT NULL,
	[TotalAc] [smallint] NOT NULL,
	[TotalHitRate] [smallint] NOT NULL,
	[TotalEvasionRate] [smallint] NOT NULL,
	[TotalFireR] [smallint] NOT NULL,
	[TotalColdR] [smallint] NOT NULL,
	[TotalLightningR] [smallint] NOT NULL,
	[TotalMagicR] [smallint] NOT NULL,
	[TotalDiseaseR] [smallint] NOT NULL,
	[TotalPoisonR] [smallint] NOT NULL,
	[Class] [smallint] NOT NULL,
	[UserSkillUse] [tinyint] NOT NULL,
	[NeedItem] [tinyint] NOT NULL,
	[SkillSuccessRate] [tinyint] NOT NULL,
	[MonsterFriendly] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE6] VALUES (470040, N'Bulture', N'', 180, 200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470050, N'Zombie', N'', 100, 1000, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470060, N'Werewolf', N'', 120, 500, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470070, N'Lycan', N'', 121, 500, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470080, N'Striper scorpion', N'', 120, 900, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470090, N'KOBOLD', N'', 100, 2010, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470100, N'Dire wolf', N'', 150, 500, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470110, N'Skeleton knight', N'', 130, 1100, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470120, N'Smilodon', N'', 100, 600, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470130, N'Mastodon', N'', 120, 400, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470132, N'Black widow', N'', 100, 3400, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470140, N'Megarodon', N'', 150, 400, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470150, N'Death knight', N'', 150, 1100, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470160, N'Sheriff', N'', 100, 1200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 2, 1, 1)
INSERT [MAGIC_TYPE6] VALUES (470170, N'Gaunga', N'', 102, 1300, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470180, N'Cardinal', N'', 130, 1200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470190, N'Haunga', N'', 100, 1300, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470192, N'gloom  hound', N'', 90, 610, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470200, N'Harunga', N'', 101, 1300, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470202, N'burning skeleton', N'', 150, 3700, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470210, N'Deruvish', N'', 110, 2100, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470212, N'Reaper', N'', 150, 3500, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470220, N'Apostle', N'', 120, 2100, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470230, N'Harpy', N'', 100, 2200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470240, N'Troll', N'', 120, 1701, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470248, N'HOBGOBLIN', N'', 160, 2010, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470250, N'Raven Harpy', N'', 120, 2200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471020, N'Kecoon bone collector', N'', 80, 100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471030, N'Gavolt', N'', 100, 300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471040, N'Bulture', N'', 180, 200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471050, N'Zombie', N'', 100, 1000, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471060, N'Werewolf', N'', 120, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471070, N'Lycan', N'', 121, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471080, N'Striper scorpion', N'', 120, 900, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471090, N'KOBOLD', N'', 100, 2010, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471100, N'Dire wolf', N'', 150, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471110, N'Skeleton knight', N'', 130, 1100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471120, N'Smilodon', N'', 100, 600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471130, N'Mastodon', N'', 120, 400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471132, N'Black widow', N'', 100, 3400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471140, N'Megarodon', N'', 150, 400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471150, N'Death knight', N'', 150, 1100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471160, N'Sheriff', N'', 100, 1200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 2, 1, 1)
INSERT [MAGIC_TYPE6] VALUES (471170, N'Gaunga', N'', 102, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471180, N'Cardinal', N'', 130, 1200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471190, N'Haunga', N'', 100, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471192, N'gloom  hound', N'', 90, 610, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471200, N'Harunga', N'', 101, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471202, N'burning skeleton', N'', 150, 3700, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471210, N'Deruvish', N'', 110, 2100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471212, N'Reaper', N'', 150, 3500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471220, N'Apostle', N'', 120, 2100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471230, N'Harpy', N'', 100, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471240, N'Troll', N'', 120, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (120021, N'??? ???', N'', 100, 30061, 0, 10000, 2000, 0, 1500, 0, 1000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 0, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (120022, N'??? ??', N'', 100, 30060, 0, 10000, 2000, 3, 1500, 0, 1000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 0, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (220021, N'??? ???', N'', 100, 30061, 0, 10000, 2000, 0, 1500, 0, 1000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 0, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (220022, N'??? ??', N'', 100, 30060, 0, 10000, 2000, 3, 1500, 0, 1000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 0, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450001, N'?????', N'', 70, 30010, 9000, 15000, 5000, 1, 1500, 0, 2000, 275, 275, 30000, 30000, 30000, 30000, 30000, 30000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450002, N'????', N'', 100, 30040, 9000, 20000, 3000, 3, 1500, 0, 3000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450003, N'?????', N'', 100, 30060, 9000, 30000, 2000, 3, 1500, 0, 3000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450004, N'????', N'', 120, 30050, 9000, 30000, 5000, 2, 1500, 0, 2500, 275, 275, 30000, 30000, 30000, 30000, 30000, 30000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450011, N'????', N'', 70, 30010, 9000, 15000, 5000, 1, 1500, 0, 2000, 275, 275, 30000, 30000, 30000, 30000, 30000, 30000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450012, N'???', N'', 100, 30040, 9000, 20000, 3000, 3, 1500, 0, 3000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450013, N'?????', N'', 100, 30060, 9000, 30000, 2000, 3, 1500, 0, 3000, 275, 275, 32000, 32000, 32000, 32000, 32000, 32000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (450014, N'????', N'', 120, 30050, 9000, 30000, 5000, 2, 1500, 0, 2500, 275, 275, 30000, 30000, 30000, 30000, 30000, 30000, 1111, 0, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (470010, N'Wild bulcan', N'', 120, 200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470020, N'Kecoon bone collector', N'', 80, 100, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470030, N'Gavolt', N'', 100, 300, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471340, N'Giant golem', N'', 100, 2400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471350, N'Troll King', N'', 240, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471910, N'Goddess Adelia', N'', 110, 25001, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472010, N'Wild bulcan', N'', 120, 200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472020, N'Kecoon bone collector', N'', 80, 100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472030, N'Gavolt', N'', 100, 300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472040, N'Bulture', N'', 180, 200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472050, N'Zombie', N'', 100, 1000, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472060, N'Werewolf', N'', 120, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472070, N'Lycan', N'', 121, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472080, N'Striper scorpion', N'', 120, 900, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472090, N'KOBOLD', N'', 100, 2010, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472100, N'Dire wolf', N'', 150, 500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472110, N'Skeleton knight', N'', 130, 1100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472120, N'Smilodon', N'', 100, 600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472130, N'Mastodon', N'', 120, 400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472132, N'Black widow', N'', 100, 3400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472140, N'Megarodon', N'', 150, 400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472150, N'Death knight', N'', 150, 1100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472160, N'Sheriff', N'', 100, 1200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 2, 1, 1)
INSERT [MAGIC_TYPE6] VALUES (472170, N'Gaunga', N'', 102, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472180, N'Cardinal', N'', 130, 1200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472190, N'Haunga', N'', 100, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472192, N'gloom  hound', N'', 90, 610, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472200, N'Harunga', N'', 101, 1300, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472202, N'burning skeleton', N'', 150, 3700, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472210, N'Deruvish', N'', 110, 2100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470260, N'Uruk Tron', N'', 150, 1636, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470270, N'Troll Warrior', N'', 150, 1701, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470272, N'fallen Angel', N'', 100, 3000, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470276, N'Centaur', N'', 150, 2600, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
GO
INSERT [MAGIC_TYPE6] VALUES (470280, N'Stone golem', N'', 80, 2400, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470290, N'Troll Captain', N'', 210, 1701, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470300, N'Orc bandit officer', N'', 100, 1606, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470310, N'Orc bandit officer', N'', 100, 1631, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470320, N'Orc bandit officer', N'', 100, 1636, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470322, N'Flame Rock', N'', 80, 3600, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470330, N'Harpy Queen', N'', 180, 2200, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470340, N'Giant golem', N'', 100, 2400, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470350, N'Troll King', N'', 240, 1701, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (470910, N'Goddess Adelia', N'', 110, 25001, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471010, N'Wild bulcan', N'', 120, 200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472212, N'Reaper', N'', 150, 3500, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472220, N'Apostle', N'', 120, 2100, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472230, N'Harpy', N'', 100, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472240, N'Troll', N'', 120, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472248, N'HOBGOBLIN', N'', 160, 2010, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472250, N'Raven Harpy', N'', 120, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472260, N'Uruk Tron', N'', 150, 1636, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472270, N'Troll Warrior', N'', 150, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472272, N'fallen Angel', N'', 100, 3000, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472274, N'Manticore', N'', 130, 3800, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472276, N'Centaur', N'', 150, 2600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472280, N'Stone golem', N'', 80, 2400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472290, N'Troll Captain', N'', 210, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472300, N'Orc bandit officer', N'', 100, 1606, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472310, N'Orc bandit officer', N'', 100, 1631, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472320, N'Orc bandit officer', N'', 100, 1636, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472322, N'Flame Rock', N'', 80, 3600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472330, N'Harpy Queen', N'', 180, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472340, N'Giant golem', N'', 100, 2400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472350, N'Troll King', N'', 240, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (472910, N'Goddess Adelia', N'', 110, 25001, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (478001, N'???? ??? ??iaceror', N'', 100, 2701, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (478002, N'??? ??? ??iaceror', N'', 100, 2702, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (478007, N'Snowman forum', N'', 100, 2703, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (478008, N'Snowman titi', N'', 100, 2704, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (478009, N'Snowman teo', N'', 100, 2705, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (478010, N'Snowman nunu', N'', 100, 2706, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 1, 0, 0)
INSERT [MAGIC_TYPE6] VALUES (470274, N'Manticore', N'', 130, 3800, 5400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471248, N'HOBGOBLIN', N'', 160, 2010, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471250, N'Raven Harpy', N'', 120, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471260, N'Uruk Tron', N'', 150, 1636, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471270, N'Troll Warrior', N'', 150, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471272, N'fallen Angel', N'', 100, 3000, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471274, N'Manticore', N'', 130, 3800, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471276, N'Centaur', N'', 150, 2600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471280, N'Stone golem', N'', 80, 2400, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471290, N'Troll Captain', N'', 210, 1701, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471300, N'Orc bandit officer', N'', 100, 1606, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471310, N'Orc bandit officer', N'', 100, 1631, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471320, N'Orc bandit officer', N'', 100, 1636, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471322, N'Flame Rock', N'', 80, 3600, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
INSERT [MAGIC_TYPE6] VALUES (471330, N'Harpy Queen', N'', 180, 2200, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1111, 1, 2, 0, 1)
GO
