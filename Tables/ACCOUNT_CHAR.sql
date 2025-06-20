/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [ACCOUNT_CHAR] DROP CONSTRAINT [DF_ACCOUNT_CHAR_bCharNum]
GO
/****** Object:  Table [ACCOUNT_CHAR]    Script Date: 26/05/2025 7:17:13 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ACCOUNT_CHAR]') AND type in (N'U'))
DROP TABLE [ACCOUNT_CHAR]
GO
/****** Object:  Table [ACCOUNT_CHAR]    Script Date: 26/05/2025 7:17:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ACCOUNT_CHAR](
	[strAccountID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bNation] [tinyint] NOT NULL,
	[bCharNum] [tinyint] NOT NULL,
	[strCharID1] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strCharID2] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strCharID3] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ACCOUNT_CHAR] PRIMARY KEY CLUSTERED 
(
	[strAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [ACCOUNT_CHAR] VALUES (N'bitshift', 1, 2, N'BitShift', NULL, N'Lord_Ganon')
INSERT [ACCOUNT_CHAR] VALUES (N'testing', 2, 2, N'Testing', N'Testing123', NULL)
INSERT [ACCOUNT_CHAR] VALUES (N'testing2', 1, 1, N'LordGanon', NULL, NULL)
INSERT [ACCOUNT_CHAR] VALUES (N'twostars', 2, 3, N'test', N'test3', N'test2')
GO
ALTER TABLE [ACCOUNT_CHAR] ADD  CONSTRAINT [DF_ACCOUNT_CHAR_bCharNum]  DEFAULT ((0)) FOR [bCharNum]
GO
