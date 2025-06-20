/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Index [IX_rating_rank]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP INDEX [IX_rating_rank] ON [KNIGHTS_RATING]
GO
/****** Object:  Index [IX_rating_name]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP INDEX [IX_rating_name] ON [KNIGHTS_RATING]
GO
/****** Object:  Table [KNIGHTS_RATING]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KNIGHTS_RATING]') AND type in (N'U'))
DROP TABLE [KNIGHTS_RATING]
GO
/****** Object:  Table [KNIGHTS_RATING]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KNIGHTS_RATING](
	[nRank] [int] IDENTITY(1,1) NOT NULL,
	[shIndex] [smallint] NULL,
	[strName] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nPoints] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [KNIGHTS_RATING] ON

INSERT INTO [KNIGHTS_RATING] ([nRank], [shIndex], [strName], [nPoints]) VALUES (1, 1, N'test', 50000000)
SET IDENTITY_INSERT [KNIGHTS_RATING] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_rating_name]    Script Date: 26/05/2025 6:47:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_rating_name] ON [KNIGHTS_RATING]
(
	[strName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_rating_rank]    Script Date: 26/05/2025 6:47:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_rating_rank] ON [KNIGHTS_RATING]
(
	[nRank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
