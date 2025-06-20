/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [START_POSITION]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[START_POSITION]') AND type in (N'U'))
DROP TABLE [START_POSITION]
GO
/****** Object:  Table [START_POSITION]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [START_POSITION](
	[ZoneID] [smallint] NOT NULL,
	[sKarusX] [smallint] NOT NULL,
	[sKarusZ] [smallint] NOT NULL,
	[sElmoradX] [smallint] NOT NULL,
	[sElmoradZ] [smallint] NOT NULL,
	[bRangeX] [tinyint] NOT NULL,
	[bRangeZ] [tinyint] NOT NULL,
	[sKarusGateX] [smallint] NOT NULL,
	[sKarusGateZ] [smallint] NOT NULL,
	[sElmoGateX] [smallint] NOT NULL,
	[sElmoGateZ] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [START_POSITION] VALUES (1, 441, 1625, 1859, 170, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (2, 219, 1859, 1595, 412, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (11, 527, 543, 527, 543, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (12, 527, 543, 527, 543, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (21, 306, 352, 306, 352, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (30, 505, 837, 500, 250, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (32, 50, 69, 50, 69, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (33, 50, 69, 50, 69, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (48, 128, 120, 128, 120, 5, 5, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (51, 150, 150, 150, 150, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (52, 150, 150, 150, 150, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (53, 150, 150, 150, 150, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (54, 150, 150, 150, 150, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (55, 150, 150, 150, 150, 1, 1, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (101, 820, 98, 113, 771, 5, 5, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (102, 48, 155, 974, 869, 5, 5, 82, 83, 942, 941)
INSERT [START_POSITION] VALUES (201, 1380, 1090, 617, 919, 10, 10, 0, 0, 0, 0)
INSERT [START_POSITION] VALUES (103, 172, 61, 822, 937, 5, 5, 118, 151, 879, 852)
INSERT [START_POSITION] VALUES (111, 143, 73, 900, 900, 5, 5, 0, 0, 0, 0)
GO
