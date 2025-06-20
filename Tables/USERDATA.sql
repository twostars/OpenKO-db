/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_CreateTime_1]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_LoyaltyMonthly]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_MannerPoint]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_sQuestCount_1]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_strSkill]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_dwTime]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_PY]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_PZ]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_PX]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Zone]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Gold]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Points]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Authority]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Cha]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Intel]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Dex]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Sta]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Str]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Sp]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Mp]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Hp]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Fame]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Knights]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_City]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Religion]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Loyalty]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Exp]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Level]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Title]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Rank]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Gender]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Class]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Race]
GO
ALTER TABLE [USERDATA] DROP CONSTRAINT [DF_USERDATA_Nation]
GO
/****** Object:  Index [PK_Knights]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP INDEX [PK_Knights] ON [USERDATA]
GO
/****** Object:  Table [USERDATA]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USERDATA]') AND type in (N'U'))
DROP TABLE [USERDATA]
GO
/****** Object:  Table [USERDATA]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USERDATA](
	[strUserId] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Nation] [tinyint] NOT NULL,
	[Race] [tinyint] NOT NULL,
	[Class] [smallint] NOT NULL,
	[HairColor] [tinyint] NOT NULL,
	[Rank] [tinyint] NOT NULL,
	[Title] [tinyint] NOT NULL,
	[Level] [tinyint] NOT NULL,
	[Exp] [int] NOT NULL,
	[Loyalty] [int] NOT NULL,
	[Face] [tinyint] NOT NULL,
	[City] [tinyint] NOT NULL,
	[Knights] [smallint] NOT NULL,
	[Fame] [tinyint] NOT NULL,
	[Hp] [smallint] NOT NULL,
	[Mp] [smallint] NOT NULL,
	[Sp] [smallint] NOT NULL,
	[Strong] [tinyint] NOT NULL,
	[Sta] [tinyint] NOT NULL,
	[Dex] [tinyint] NOT NULL,
	[Intel] [tinyint] NOT NULL,
	[Cha] [tinyint] NOT NULL,
	[Authority] [tinyint] NOT NULL,
	[Points] [tinyint] NOT NULL,
	[Gold] [int] NOT NULL,
	[Zone] [tinyint] NOT NULL,
	[Bind] [smallint] NULL,
	[PX] [int] NOT NULL,
	[PZ] [int] NOT NULL,
	[PY] [int] NOT NULL,
	[dwTime] [int] NOT NULL,
	[strSkill] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strItem] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strSerial] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sQuestCount] [smallint] NOT NULL,
	[strQuest] [varchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MannerPoint] [int] NOT NULL,
	[LoyaltyMonthly] [int] NOT NULL,
	[CreateTime] [smalldatetime] NOT NULL,
	[UpdateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_USERDATA] PRIMARY KEY CLUSTERED 
(
	[strUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [USERDATA] VALUES (N'BitShift', 1, 2, 108, 2, 0, 0, 80, 464483023, 781, 0, 0, 0, 0, 2864, 4751, 100, 65, 157, 255, 50, 50, 0, 0, 945521186, 21, -1, 31160, 34830, 870, 0, N'    F <
 ', N'        ?·©I         ›  o¯©I                 ÉªE  èF	»2         W³©I         ''»©I ¿©I Èf— 	 bƒÆ˜: xb˜:                                                                                                                                                                                 ÐVN ;%`ù/ Ä ðá/ *                                         ', N'        	 &         )  -                 1          5 /         , + . 
 
                                                                                                                                                                                  ''                                         ', 1, N'                                                                                                                                                                                                                                                                                                                                                                                                              ', 0, 0, CAST(N'2016-05-23T21:56:00' AS SmallDateTime), CAST(N'2016-07-03T16:24:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'Lord_Ganon', 1, 3, 109, 2, 0, 0, 10, 3615, 500, 0, 0, 0, 0, 82, 278, 100, 50, 50, 70, 80, 65, 1, 12, 47748, 21, -1, 31279, 35250, 870, 0, N'         ', N'                                                                                                                8Ð0   Ô0  @Ð—  PÌ0  4%X ïûp @S—  ¤îŠ	@ pE˜  ÛB¼
X (©0                                                                                                                                                                                  ', N'                                                                                                                    	 
  
   ! % %                                                                                                                                                                                ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(N'2016-06-04T23:13:00' AS SmallDateTime), CAST(N'2016-07-02T19:55:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'LordGanon', 1, 3, 103, 0, 0, 0, 4, 190, 500, 0, 0, 0, 0, 50, 122, 100, 50, 50, 70, 70, 60, 1, 9, 33068, 21, -1, 30979, 34890, 870, 0, N'          ', N'                                                                                                                ßB¼
ø*                                                                                                                                                                                                                                                                 ', N'                                                                                                                                                                                                                                                                                                                                                                                 ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(N'2016-03-28T14:47:00' AS SmallDateTime), CAST(N'2016-07-03T05:43:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'test', 2, 13, 212, 0, 1, 0, 70, 5775184, 50000125, 0, 0, 1, 1, 747, 2175, 100, 60, 50, 70, 70, 50, 0, 0, 806494416, 21, -1, 28860, 32720, 860, 0, N'          ', N'                                                                                                                @S—  Èf— é8ýVPF 8r™   Ô0  9¬lh ÀûX                                                                                                                                                                                                                                         ', N'                                                                                                                   7   "                                                                                                                                                                                                                                          ', 5, N' 
                                                                                                                                                                                                                                                                                                                                                                                                     ', 0, 0, CAST(N'2012-11-08T07:03:00' AS SmallDateTime), CAST(N'2016-07-01T14:59:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'test2', 1, 1, 101, 0, 0, 0, 18, 9028, 450, 0, 0, 0, 0, 198, 178, 100, 86, 60, 70, 70, 50, 1, 15, 1416, 21, -1, 31560, 34580, 870, 0, N'         ', N'                                
ûJ         µ»(="                                                 Áû @S—  @Ð— 
  Ô0  ÖØÂà. ¦îŠ	'' ïÅ¿À ÛB¼
X ßB¼
ø* Õô@  =˜                                                                                                                                                                                          ', N'                                 
         

                                                 /
 1
 
 0
 
 ,
                                                                                                                                                                                             ', 2, N' "                                                                                                                                                                                                                                                                                                                                                                                                           ', 0, 0, CAST(N'2012-11-08T08:03:00' AS SmallDateTime), CAST(N'2016-05-19T21:20:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'test3', 2, 12, 209, 0, 0, 0, 29, 20874, 300, 0, 0, 0, 0, 366, 716, 100, 60, 60, 70, 66, 72, 1, 56, 48119151, 21, -1, 30570, 34330, 870, 0, N'        ', N'        ï˜Žš                 ‘Žš         ßB¼
ß*                         •Ž@         ÙœŽj ¿ Žš Èf— X (©0  PÌ0  8Ð0  @S—  @Ð—  pE˜   Ô0 
 ï˜Ž                                                                                                                                                                                                  ', N'                                   4                        
                 
  7  3                                                                                                                                                                                                ', 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                ', 0, 0, CAST(N'2012-11-08T08:04:00' AS SmallDateTime), CAST(N'2016-07-03T05:44:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'Testing', 2, 11, 201, 0, 0, 0, 20, 25287, 564, 0, 0, 0, 0, 258, 238, 100, 75, 65, 60, 50, 50, 1, 57, 42301, 201, -1, 128380, 106440, 660, 0, N'         ', N'        ïûV                 
ûU         Ö»(‰.         Ö»(‰.         ûU                 Áû& ¹”X 4%X  Ô0  8Ð0  PÌ0  pE˜  @Ð—   Ð
  >÷(# @S—  ]C¼
X                                                                                                                         p0 
 €Æ—ø*                                         ', N'         ''                 
        
 3         4         1                  
 	 ''
  ) 	 '' * + - .                                                                                                                          
                                        ', 6, N'
    ! 8                                                                                                                                                                                                                                                                                                                                                                                               ', 0, 0, CAST(N'2016-03-13T20:13:00' AS SmallDateTime), CAST(N'2016-07-01T14:21:00' AS SmallDateTime))
INSERT [USERDATA] VALUES (N'Testing123', 2, 13, 205, 0, 0, 0, 15, 9613, 500, 0, 0, 0, 0, 186, 166, 100, 78, 50, 70, 70, 50, 1, 24, 50873, 21, -1, 31610, 35050, 870, 0, N'         ', N'        ïûp                 
ûp         µ»(â"                         ûp         ×ûp ¿ûp ¤îŠ	@          Ô0  (©0  @S—  pE˜ 	 PÌ0  @Ð—  ]C¼
4 ]C¼
X 
ûp 
ûp Óôp ]C¼
X ûp                                                                                                                                                 ', N'                                                                    	 
                 
     % %                                                                                                                                                ', 2, N'                                                                                                                                                                                                                                                                                                                                                                                                            ', 0, 0, CAST(N'2016-04-27T11:55:00' AS SmallDateTime), CAST(N'2016-07-02T20:00:00' AS SmallDateTime))
GO
/****** Object:  Index [PK_Knights]    Script Date: 26/05/2025 6:47:33 AM ******/
CREATE NONCLUSTERED INDEX [PK_Knights] ON [USERDATA]
(
	[Knights] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Nation]  DEFAULT ((0)) FOR [Nation]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Race]  DEFAULT ((1)) FOR [Race]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Class]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Gender]  DEFAULT ((0)) FOR [HairColor]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Rank]  DEFAULT ((0)) FOR [Rank]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Title]  DEFAULT ((0)) FOR [Title]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Level]  DEFAULT ((1)) FOR [Level]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Exp]  DEFAULT ((5)) FOR [Exp]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Loyalty]  DEFAULT ((500)) FOR [Loyalty]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Religion]  DEFAULT ((0)) FOR [Face]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_City]  DEFAULT ((0)) FOR [City]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Knights]  DEFAULT ((0)) FOR [Knights]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Fame]  DEFAULT ((0)) FOR [Fame]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Hp]  DEFAULT ((100)) FOR [Hp]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Mp]  DEFAULT ((100)) FOR [Mp]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Sp]  DEFAULT ((100)) FOR [Sp]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Str]  DEFAULT ((0)) FOR [Strong]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Sta]  DEFAULT ((0)) FOR [Sta]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Dex]  DEFAULT ((0)) FOR [Dex]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Intel]  DEFAULT ((0)) FOR [Intel]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Cha]  DEFAULT ((0)) FOR [Cha]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Authority]  DEFAULT ((1)) FOR [Authority]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Points]  DEFAULT ((0)) FOR [Points]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Gold]  DEFAULT ((50000)) FOR [Gold]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_Zone]  DEFAULT ((1)) FOR [Zone]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_PX]  DEFAULT ((268100)) FOR [PX]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_PZ]  DEFAULT ((131000)) FOR [PZ]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_PY]  DEFAULT ((0)) FOR [PY]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_dwTime]  DEFAULT ((0)) FOR [dwTime]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_strSkill]  DEFAULT (0x00) FOR [strSkill]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_sQuestCount_1]  DEFAULT ((0)) FOR [sQuestCount]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_MannerPoint]  DEFAULT ((0)) FOR [MannerPoint]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_LoyaltyMonthly]  DEFAULT ((0)) FOR [LoyaltyMonthly]
GO
ALTER TABLE [USERDATA] ADD  CONSTRAINT [DF_USERDATA_CreateTime_1]  DEFAULT (getdate()) FOR [CreateTime]
GO
