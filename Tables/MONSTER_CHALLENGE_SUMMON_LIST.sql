/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [MONSTER_CHALLENGE_SUMMON_LIST] DROP CONSTRAINT [DF_MONSTER_CHALLENGE_SUMMON_LIST_bStageLevel]
GO
/****** Object:  Table [MONSTER_CHALLENGE_SUMMON_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[MONSTER_CHALLENGE_SUMMON_LIST]') AND type in (N'U'))
DROP TABLE [MONSTER_CHALLENGE_SUMMON_LIST]
GO
/****** Object:  Table [MONSTER_CHALLENGE_SUMMON_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MONSTER_CHALLENGE_SUMMON_LIST](
	[sIndex] [smallint] NOT NULL,
	[bLevel] [tinyint] NOT NULL,
	[bStage] [tinyint] NOT NULL,
	[bStageLevel] [tinyint] NOT NULL,
	[sTime] [smallint] NOT NULL,
	[sSid] [smallint] NOT NULL,
	[sCount] [smallint] NOT NULL,
	[sPosX] [smallint] NOT NULL,
	[sPosZ] [smallint] NOT NULL,
	[bRange] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (0, 1, 1, 1, 310, 2903, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (1, 1, 2, 1, 320, 1673, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (2, 1, 3, 1, 360, 1690, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (3, 1, 4, 1, 370, 1210, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (4, 1, 5, 1, 380, 1111, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (5, 1, 6, 1, 420, 1204, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (6, 1, 7, 1, 430, 4301, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (7, 1, 8, 1, 440, 1113, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (8, 1, 9, 1, 450, 1304, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (9, 1, 10, 1, 460, 1743, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (10, 1, 11, 1, 510, 2021, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (11, 1, 12, 1, 520, 1692, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (12, 1, 13, 1, 550, 1114, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (13, 1, 14, 1, 560, 1693, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (14, 1, 15, 1, 590, 2071, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (15, 1, 16, 1, 600, 1309, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (16, 1, 17, 1, 610, 2223, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (17, 1, 18, 1, 650, 1731, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (18, 1, 19, 1, 660, 2022, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (19, 1, 20, 1, 700, 512, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (20, 1, 21, 1, 720, 1691, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (21, 1, 22, 1, 750, 1303, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (22, 1, 23, 1, 760, 2121, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (23, 1, 24, 1, 790, 2952, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (24, 1, 25, 1, 800, 2221, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (25, 1, 26, 1, 810, 1201, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (26, 1, 27, 1, 820, 1114, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (27, 1, 28, 1, 830, 2023, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (28, 1, 29, 1, 870, 2122, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (29, 1, 30, 1, 880, 4501, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (30, 1, 31, 1, 890, 2908, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (31, 1, 32, 1, 960, 1694, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (32, 1, 33, 1, 970, 1200, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (33, 1, 34, 1, 980, 3671, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (34, 1, 35, 1, 1030, 2121, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (35, 1, 36, 1, 1040, 2021, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (36, 1, 37, 1, 1050, 2421, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (37, 1, 38, 1, 1130, 2222, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (38, 1, 39, 1, 1140, 4701, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (39, 1, 40, 1, 1150, 403, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (40, 1, 41, 1, 1160, 2423, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (41, 1, 42, 1, 1200, 2904, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (42, 1, 43, 1, 1210, 1741, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (43, 1, 44, 1, 1220, 4301, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (44, 1, 45, 1, 1280, 1823, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (45, 1, 46, 1, 1290, 612, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (46, 1, 47, 1, 1310, 2353, 18, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (47, 1, 48, 1, 1350, 2601, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (48, 1, 49, 1, 1360, 2221, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (49, 1, 50, 1, 1370, 2421, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (50, 1, 51, 1, 1430, 1362, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (51, 1, 52, 1, 1440, 3771, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (52, 1, 53, 1, 1470, 2422, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (53, 1, 54, 1, 1480, 1742, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (54, 1, 55, 1, 1490, 3021, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (55, 1, 56, 1, 1500, 3891, 1, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (56, 2, 1, 1, 310, 1150, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (57, 2, 2, 1, 320, 3451, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (58, 2, 3, 1, 330, 1111, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (59, 2, 4, 1, 340, 3571, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (60, 2, 5, 1, 360, 1114, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (61, 2, 6, 1, 380, 1307, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (62, 2, 7, 1, 390, 1210, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (63, 2, 8, 1, 410, 1671, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (64, 2, 9, 1, 420, 2121, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (65, 2, 10, 1, 440, 1111, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (66, 2, 11, 1, 470, 2221, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (67, 2, 12, 1, 500, 4501, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (68, 2, 13, 1, 510, 2021, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (69, 2, 14, 1, 540, 2421, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (70, 2, 15, 1, 550, 655, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (71, 2, 16, 1, 580, 1004, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (72, 2, 17, 1, 590, 1310, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (73, 2, 18, 1, 630, 1690, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (74, 2, 19, 1, 640, 2223, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (75, 2, 20, 1, 680, 2952, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (76, 2, 21, 1, 690, 350, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (77, 2, 22, 1, 700, 2122, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (78, 2, 23, 1, 740, 1741, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (79, 2, 24, 1, 750, 1110, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (80, 2, 25, 1, 810, 555, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (81, 2, 26, 1, 820, 1742, 3, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (82, 2, 27, 1, 860, 2904, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (83, 2, 28, 1, 940, 1150, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (84, 2, 29, 1, 970, 1731, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (85, 2, 30, 1, 980, 2221, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (86, 2, 31, 1, 990, 2023, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (87, 2, 32, 1, 1000, 2421, 3, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (88, 2, 33, 1, 1050, 2908, 4, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (89, 2, 34, 1, 1060, 1114, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (90, 2, 35, 1, 1100, 253, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (91, 2, 36, 1, 1110, 1693, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (92, 2, 37, 1, 1120, 806, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (93, 2, 38, 1, 1150, 2902, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (94, 2, 39, 1, 1160, 1694, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (95, 2, 40, 1, 1190, 2222, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (96, 2, 41, 1, 1200, 2901, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (97, 2, 42, 1, 1240, 1113, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (98, 2, 43, 1, 1250, 1742, 3, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (99, 2, 44, 1, 1290, 2021, 6, 126, 126, 45)
GO
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (100, 2, 45, 1, 1310, 1310, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (101, 2, 46, 1, 1320, 4351, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (102, 2, 47, 1, 1330, 3771, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (103, 2, 48, 1, 1380, 2422, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (104, 2, 49, 1, 1390, 1362, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (105, 2, 50, 1, 1420, 2022, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (106, 2, 51, 1, 1430, 1743, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (107, 2, 52, 1, 1450, 1671, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (108, 2, 53, 1, 1490, 3671, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (109, 2, 54, 1, 1500, 1694, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (110, 2, 55, 1, 1510, 755, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (111, 2, 56, 1, 1520, 4591, 1, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (112, 3, 1, 1, 310, 2903, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (113, 3, 2, 1, 320, 1673, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (114, 3, 3, 1, 360, 1690, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (115, 3, 4, 1, 370, 1210, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (116, 3, 5, 1, 380, 1111, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (117, 3, 6, 1, 420, 1204, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (118, 3, 7, 1, 430, 4301, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (119, 3, 8, 1, 440, 1113, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (120, 3, 9, 1, 450, 1304, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (121, 3, 10, 1, 460, 1743, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (122, 3, 11, 1, 510, 2021, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (123, 3, 12, 1, 520, 1692, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (124, 3, 13, 1, 550, 1114, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (125, 3, 14, 1, 560, 1693, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (126, 3, 15, 1, 590, 2071, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (127, 3, 16, 1, 600, 1309, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (128, 3, 17, 1, 610, 2223, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (129, 3, 18, 1, 650, 1731, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (130, 3, 19, 1, 660, 2022, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (131, 3, 20, 1, 700, 512, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (132, 3, 21, 1, 720, 1691, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (133, 3, 22, 1, 750, 1303, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (134, 3, 23, 1, 760, 2121, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (135, 3, 24, 1, 790, 2952, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (136, 3, 25, 1, 800, 2221, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (137, 3, 26, 1, 810, 1201, 30, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (138, 3, 27, 1, 820, 1114, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (139, 3, 28, 1, 830, 2023, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (140, 3, 29, 1, 870, 2122, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (141, 3, 30, 1, 880, 4501, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (142, 3, 31, 1, 890, 2908, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (143, 3, 32, 1, 960, 1694, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (144, 3, 33, 1, 970, 1200, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (145, 3, 34, 1, 980, 3671, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (146, 3, 35, 1, 1030, 2121, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (147, 3, 36, 1, 1040, 2021, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (148, 3, 37, 1, 1050, 2421, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (149, 3, 38, 1, 1130, 2222, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (150, 3, 39, 1, 1140, 4701, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (151, 3, 40, 1, 1150, 403, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (152, 3, 41, 1, 1160, 2423, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (153, 3, 42, 1, 1200, 2904, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (154, 3, 43, 1, 1210, 1741, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (155, 3, 44, 1, 1220, 4301, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (156, 3, 45, 1, 1280, 1823, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (157, 3, 46, 1, 1290, 612, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (158, 3, 47, 1, 1310, 2353, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (159, 3, 48, 1, 1350, 2601, 3, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (160, 3, 49, 1, 1360, 2221, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (161, 3, 50, 1, 1370, 2421, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (162, 3, 51, 1, 1430, 1362, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (163, 3, 52, 1, 1440, 3771, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (164, 3, 53, 1, 1470, 2422, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (165, 3, 54, 1, 1480, 1742, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (166, 3, 55, 1, 1490, 3021, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (167, 3, 56, 1, 1500, 3891, 1, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (200, 3, 33, 3, 970, 4501, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (201, 3, 34, 3, 980, 2601, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (202, 3, 35, 3, 1030, 2222, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (203, 3, 36, 3, 1040, 1694, 20, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (204, 3, 37, 3, 1050, 3021, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (205, 3, 38, 3, 1130, 2421, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (206, 3, 39, 3, 1140, 1114, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (207, 3, 40, 3, 1150, 403, 25, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (208, 3, 41, 3, 1160, 2423, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (209, 3, 42, 3, 1200, 2904, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (210, 3, 43, 3, 1210, 1731, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (211, 3, 44, 3, 1220, 4301, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (212, 3, 45, 3, 1280, 1823, 8, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (213, 3, 46, 3, 1290, 612, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (214, 3, 47, 3, 1310, 2353, 5, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (215, 3, 48, 3, 1350, 2601, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (216, 3, 49, 3, 1360, 2221, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (217, 3, 50, 3, 1370, 2421, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (218, 3, 51, 3, 1430, 1362, 15, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (219, 3, 52, 3, 1440, 3771, 12, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (220, 3, 53, 3, 1470, 2422, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (221, 3, 54, 3, 1480, 1742, 10, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (222, 3, 55, 3, 1490, 3021, 2, 126, 126, 45)
INSERT [MONSTER_CHALLENGE_SUMMON_LIST] VALUES (223, 3, 56, 3, 1500, 3891, 1, 126, 126, 45)
GO
ALTER TABLE [MONSTER_CHALLENGE_SUMMON_LIST] ADD  CONSTRAINT [DF_MONSTER_CHALLENGE_SUMMON_LIST_bStageLevel]  DEFAULT (0) FOR [bStageLevel]
GO
