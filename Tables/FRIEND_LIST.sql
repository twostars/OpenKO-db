/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [FRIEND_LIST]    Script Date: 26/05/2025 7:23:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FRIEND_LIST]') AND type in (N'U'))
DROP TABLE [FRIEND_LIST]
GO
/****** Object:  Table [FRIEND_LIST]    Script Date: 26/05/2025 7:23:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FRIEND_LIST](
	[strUserID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strFriend1] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend2] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend3] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend4] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend5] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend6] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend7] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend8] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend9] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend10] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend11] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend12] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend13] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend14] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend15] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend16] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend17] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend18] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend19] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend20] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend21] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend22] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend23] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strFriend24] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_FRIEND_LIST] PRIMARY KEY CLUSTERED 
(
	[strUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
