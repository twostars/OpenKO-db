/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [TB_USER] DROP CONSTRAINT [DF_TB_USER_PremiumExpires]
GO
ALTER TABLE [TB_USER] DROP CONSTRAINT [DF_TB_USER_strAuthority]
GO
ALTER TABLE [TB_USER] DROP CONSTRAINT [DF_TB_USER_strEmail]
GO
ALTER TABLE [TB_USER] DROP CONSTRAINT [DF_TB_USER_strSocNo]
GO
/****** Object:  Table [TB_USER]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TB_USER]') AND type in (N'U'))
DROP TABLE [TB_USER]
GO
/****** Object:  Table [TB_USER]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TB_USER](
	[strAccountID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strPasswd] [varchar](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strSocNo] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strEmail] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strAuthority] [tinyint] NOT NULL,
	[PremiumExpire] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [TB_USER] VALUES (N'twostars', N'test', N'', N'', 1, CAST(N'2012-11-11T06:59:06.643' AS DateTime))
INSERT [TB_USER] VALUES (N'testing', N'testing', N'', N'', 1, CAST(N'2016-03-16T19:57:23.977' AS DateTime))
INSERT [TB_USER] VALUES (N'testing2', N'testing2', N'', N'', 1, CAST(N'2016-03-31T14:46:19.230' AS DateTime))
INSERT [TB_USER] VALUES (N'BitShift', N'test', N'', N'', 1, CAST(N'2016-05-26T21:48:24.150' AS DateTime))
INSERT [TB_USER] VALUES (N'testing1', N'testing1', N'', N'', 1, CAST(N'2016-07-03T19:37:56.920' AS DateTime))
INSERT [TB_USER] VALUES (N'testing3', N'testing3', N'', N'', 1, CAST(N'2016-07-03T19:38:11.263' AS DateTime))
INSERT [TB_USER] VALUES (N'testing4', N'testing4', N'', N'', 1, CAST(N'2016-07-03T19:38:18.013' AS DateTime))
INSERT [TB_USER] VALUES (N'testing5', N'testing5', N'', N'', 1, CAST(N'2016-07-03T19:38:27.560' AS DateTime))
INSERT [TB_USER] VALUES (N'testing6', N'testing6', N'', N'', 1, CAST(N'2016-07-03T19:38:33.903' AS DateTime))
INSERT [TB_USER] VALUES (N'testing7', N'testing7', N'', N'', 1, CAST(N'2016-07-03T19:38:40.090' AS DateTime))
INSERT [TB_USER] VALUES (N'testing8', N'testing8', N'', N'', 1, CAST(N'2016-07-03T19:38:45.793' AS DateTime))
INSERT [TB_USER] VALUES (N'testing9', N'testing9', N'', N'', 1, CAST(N'2016-07-03T19:38:52.043' AS DateTime))
INSERT [TB_USER] VALUES (N'testing10', N'testing10', N'', N'', 1, CAST(N'2016-07-03T19:38:57.543' AS DateTime))
INSERT [TB_USER] VALUES (N'kenner', N'xxx', N'', N'', 1, CAST(N'2016-07-03T19:38:57.543' AS DateTime))
GO
ALTER TABLE [TB_USER] ADD  CONSTRAINT [DF_TB_USER_strSocNo]  DEFAULT ('') FOR [strSocNo]
GO
ALTER TABLE [TB_USER] ADD  CONSTRAINT [DF_TB_USER_strEmail]  DEFAULT ('') FOR [strEmail]
GO
ALTER TABLE [TB_USER] ADD  CONSTRAINT [DF_TB_USER_strAuthority]  DEFAULT ((1)) FOR [strAuthority]
GO
ALTER TABLE [TB_USER] ADD  CONSTRAINT [DF_TB_USER_PremiumExpires]  DEFAULT (getdate()+(3)) FOR [PremiumExpire]
GO
