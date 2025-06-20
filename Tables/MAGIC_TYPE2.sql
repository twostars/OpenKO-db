/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [MAGIC_TYPE2]    Script Date: 26/05/2025 7:15:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MAGIC_TYPE2]') AND type in (N'U'))
DROP TABLE [MAGIC_TYPE2]
GO
/****** Object:  Table [MAGIC_TYPE2]    Script Date: 26/05/2025 7:15:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MAGIC_TYPE2](
	[iNum] [int] NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HitType] [tinyint] NOT NULL,
	[HitRate] [smallint] NOT NULL,
	[AddDamage] [smallint] NOT NULL,
	[AddRange] [smallint] NOT NULL,
	[NeedArrow] [tinyint] NOT NULL,
	[AddDamagePlus] [smallint] NULL
) ON [PRIMARY]
GO
INSERT [MAGIC_TYPE2] VALUES (207540, N'arc shot', N'', 0, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207545, N'explosive shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207550, N'viper', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207555, N'arrow shower', N'', 0, 100, 99, 100, 5, 0)
INSERT [MAGIC_TYPE2] VALUES (207560, N'shadow hunter', N'', 2, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208500, N'through shot', N'', 0, 100, 150, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208505, N'fire arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208510, N'poison arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208515, N'multiple shot', N'', 0, 100, 99, 100, 3, 0)
INSERT [MAGIC_TYPE2] VALUES (208520, N'Guided arrow', N'', 2, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208525, N'perfect shot', N'', 0, 100, 200, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208530, N'fire shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208535, N'poison shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208540, N'arc shot', N'', 0, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208545, N'explosive shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208550, N'viper', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208555, N'arrow shower', N'', 0, 100, 99, 100, 5, 0)
INSERT [MAGIC_TYPE2] VALUES (208560, N'shadow hunter', N'', 2, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (208570, N'?? ???hunter', N'', 2, 100, 300, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (102003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107500, N'through shot', N'', 0, 100, 150, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107505, N'fire arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107510, N'poison arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107515, N'multiple shot', N'', 0, 100, 99, 100, 3, 0)
INSERT [MAGIC_TYPE2] VALUES (107520, N'Guided arrow', N'', 2, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107525, N'perfect shot', N'', 0, 100, 200, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107530, N'fire shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107535, N'poison shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107540, N'arc shot', N'', 0, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107545, N'explosive shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107550, N'viper', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (107555, N'arrow shower', N'', 0, 100, 99, 100, 5, 0)
INSERT [MAGIC_TYPE2] VALUES (107560, N'shadow hunter', N'', 2, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108500, N'through shot', N'', 0, 100, 150, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108505, N'fire arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108510, N'poison arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108515, N'multiple shot', N'', 0, 100, 99, 100, 3, 0)
INSERT [MAGIC_TYPE2] VALUES (108520, N'Guided arrow', N'', 2, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108525, N'perfect shot', N'', 0, 100, 200, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108530, N'fire shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108535, N'poison shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108540, N'arc shot', N'', 0, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108545, N'explosive shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108550, N'viper', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108555, N'arrow shower', N'', 0, 100, 99, 100, 5, 0)
INSERT [MAGIC_TYPE2] VALUES (108560, N'shadow hunter', N'', 2, 100, 250, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (108570, N'?? ???hunter', N'', 2, 100, 300, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (202003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207003, N'Archery', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207500, N'through shot', N'', 0, 100, 150, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207505, N'fire arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207510, N'poison arrow', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207515, N'multiple shot', N'', 0, 100, 99, 100, 3, 0)
INSERT [MAGIC_TYPE2] VALUES (207520, N'Guided arrow', N'', 2, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207525, N'perfect shot', N'', 0, 100, 200, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207530, N'fire shot', N'', 0, 100, 100, 100, 1, 0)
INSERT [MAGIC_TYPE2] VALUES (207535, N'poison shot', N'', 0, 100, 100, 100, 1, 0)
GO
