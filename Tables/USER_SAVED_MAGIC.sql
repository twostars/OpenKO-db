/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [USER_SAVED_MAGIC]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USER_SAVED_MAGIC]') AND type in (N'U'))
DROP TABLE [USER_SAVED_MAGIC]
GO
/****** Object:  Table [USER_SAVED_MAGIC]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_SAVED_MAGIC](
	[strCharID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nSkill1] [int] NOT NULL,
	[nDuring1] [smallint] NOT NULL,
	[nSkill2] [int] NOT NULL,
	[nDuring2] [smallint] NOT NULL,
	[nSkill3] [int] NOT NULL,
	[nDuring3] [smallint] NOT NULL,
	[nSkill4] [int] NOT NULL,
	[nDuring4] [smallint] NOT NULL,
	[nSkill5] [int] NOT NULL,
	[nDuring5] [smallint] NOT NULL,
	[nSkill6] [int] NOT NULL,
	[nDuring6] [smallint] NOT NULL,
	[nSkill7] [int] NOT NULL,
	[nDuring7] [smallint] NOT NULL,
	[nSkill8] [int] NOT NULL,
	[nDuring8] [smallint] NOT NULL,
	[nSkill9] [int] NOT NULL,
	[nDuring9] [smallint] NOT NULL,
	[nSkill10] [int] NOT NULL,
	[nDuring10] [smallint] NOT NULL,
 CONSTRAINT [PK_USER_SAVED_MAGIC] PRIMARY KEY CLUSTERED 
(
	[strCharID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [USER_SAVED_MAGIC] VALUES (N'BitShift', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'GMMumma', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'Lord_Ganon', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'LordGanon', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'test', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'test2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'test3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'Testing', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'Testing123', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [USER_SAVED_MAGIC] VALUES (N'Warrior', 500034, 26, 500035, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
