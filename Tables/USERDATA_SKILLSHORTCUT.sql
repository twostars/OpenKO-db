/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [USERDATA_SKILLSHORTCUT] DROP CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_strSkillData]
GO
ALTER TABLE [USERDATA_SKILLSHORTCUT] DROP CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_nCount]
GO
ALTER TABLE [USERDATA_SKILLSHORTCUT] DROP CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_strCharID]
GO
/****** Object:  Table [USERDATA_SKILLSHORTCUT]    Script Date: 26/05/2025 7:44:06 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USERDATA_SKILLSHORTCUT]') AND type in (N'U'))
DROP TABLE [USERDATA_SKILLSHORTCUT]
GO
/****** Object:  Table [USERDATA_SKILLSHORTCUT]    Script Date: 26/05/2025 7:44:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USERDATA_SKILLSHORTCUT](
	[strCharID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nCount] [smallint] NOT NULL,
	[strSkillData] [varchar](260) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_USERDATA_SKILLSHORTCUT] PRIMARY KEY CLUSTERED 
(
	[strCharID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'BitShift', 5, N'µ¨ Pê ‹,  žc äIr                                                                                                                                                                                                                                                 ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'GMMumma', 4, N'=¡ €ã Â%& h5                                                                                                                                                                                                                                                     ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Magician', 0, N'                                                                                                                                                                                                                                                                    ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Priest', 0, N'                                                                                                                                                                                                                                                                    ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Rogue', 0, N'                                                                                                                                                                                                                                                                    ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'test', 0, N'                                                                                                                                                                                                                                                                    ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'test2', 1, N'‰Š                                                                                                                                                                                                                                                                 ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'test3', 0, N'                                                                                                                                                                                                                                                                    ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Testing', 1, N')                                                                                                                                                                                                                                                                 ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Testing123', 2, N') mS                                                                                                                                                                                                                                                             ')
INSERT [USERDATA_SKILLSHORTCUT] VALUES (N'Warrior', 6, N') ‚ã Ã%&  h5 =ªD ±ÅS                                                                                                                                                                                                                                             ')
GO
ALTER TABLE [USERDATA_SKILLSHORTCUT] ADD  CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_strCharID]  DEFAULT ('') FOR [strCharID]
GO
ALTER TABLE [USERDATA_SKILLSHORTCUT] ADD  CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_nCount]  DEFAULT ((0)) FOR [nCount]
GO
ALTER TABLE [USERDATA_SKILLSHORTCUT] ADD  CONSTRAINT [DF_USERDATA_SKILLSHORTCUT_strSkillData]  DEFAULT (0x00) FOR [strSkillData]
GO
