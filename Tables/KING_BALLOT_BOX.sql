/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [KING_BALLOT_BOX]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KING_BALLOT_BOX]') AND type in (N'U'))
DROP TABLE [KING_BALLOT_BOX]
GO
/****** Object:  Table [KING_BALLOT_BOX]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KING_BALLOT_BOX](
	[strAccountID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[byNation] [tinyint] NOT NULL,
	[strCandidacyID] [varchar](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
INSERT [KING_BALLOT_BOX] VALUES (N'twostars', N'test', 2, N'test')
GO
