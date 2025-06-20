/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [USER_PERSONAL_RANK] DROP CONSTRAINT [DF_USER_PERSONAL_RANK_nKarusCheck]
GO
ALTER TABLE [USER_PERSONAL_RANK] DROP CONSTRAINT [DF_USER_PERSONAL_RANK_nElmoCheck]
GO
/****** Object:  Table [USER_PERSONAL_RANK]    Script Date: 26/05/2025 7:42:01 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USER_PERSONAL_RANK]') AND type in (N'U'))
DROP TABLE [USER_PERSONAL_RANK]
GO
/****** Object:  Table [USER_PERSONAL_RANK]    Script Date: 26/05/2025 7:42:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_PERSONAL_RANK](
	[nRank] [smallint] NOT NULL,
	[strPosition] [varchar](21) COLLATE Korean_Wansung_CI_AS NOT NULL,
	[nElmoUP] [smallint] NOT NULL,
	[strElmoUserID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nElmoLoyaltyMonthly] [int] NULL,
	[nElmoCheck] [int] NOT NULL,
	[nKarusUP] [smallint] NOT NULL,
	[strKarusUserID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nKarusLoyaltyMonthly] [int] NULL,
	[nKarusCheck] [int] NOT NULL,
	[nSalary] [int] NOT NULL,
	[UpdateDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_USER_PERSONAL_RANK] PRIMARY KEY CLUSTERED 
(
	[nRank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [USER_PERSONAL_RANK] VALUES (1, N'Gold Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (2, N'Silver Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (3, N'Silver Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (4, N'Silver Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (5, N'Mirage Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (6, N'Mirage Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (7, N'Mirage Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (8, N'Mirage Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (9, N'Mirage Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (10, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (11, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (12, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (13, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (14, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (15, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (16, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (17, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (18, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (19, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (20, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (21, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (22, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (23, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (24, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (25, N'Shadow Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (26, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (27, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (28, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (29, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (30, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (31, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (32, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (33, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (34, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (35, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (36, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (37, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (38, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (39, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (40, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (41, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (42, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (43, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (44, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (45, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (46, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (47, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (48, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (49, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (50, N'Mist Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (51, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (52, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (53, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (54, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (55, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (56, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (57, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (58, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (59, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (60, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (61, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (62, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (63, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (64, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (65, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (66, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (67, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (68, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (69, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (70, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (71, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (72, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (73, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (74, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (75, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (76, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (77, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (78, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (79, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (80, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (81, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (82, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (83, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (84, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (85, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (86, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (87, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (88, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (89, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (90, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (91, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (92, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (93, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (94, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (95, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (96, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (97, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (98, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (99, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
INSERT [USER_PERSONAL_RANK] VALUES (100, N'Training Knight', 0, N'', 0, 0, 0, N'', 0, 0, 0, CAST(N'2012-11-08T07:33:00' AS SmallDateTime))
GO
ALTER TABLE [USER_PERSONAL_RANK] ADD  CONSTRAINT [DF_USER_PERSONAL_RANK_nElmoCheck]  DEFAULT ((0)) FOR [nElmoCheck]
GO
ALTER TABLE [USER_PERSONAL_RANK] ADD  CONSTRAINT [DF_USER_PERSONAL_RANK_nKarusCheck]  DEFAULT ((0)) FOR [nKarusCheck]
GO
