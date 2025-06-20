/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [KNIGHTS_ALLIANCE]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KNIGHTS_ALLIANCE]') AND type in (N'U'))
DROP TABLE [KNIGHTS_ALLIANCE]
GO
/****** Object:  Table [KNIGHTS_ALLIANCE]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KNIGHTS_ALLIANCE](
	[sMainAllianceKnights] [smallint] NOT NULL,
	[sSubAllianceKnights] [smallint] NOT NULL,
	[sMercenaryClan_1] [smallint] NOT NULL,
	[sMercenaryClan_2] [smallint] NOT NULL
) ON [PRIMARY]
GO
