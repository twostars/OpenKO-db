/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  View [ACCOUNT_CHAR_VIEW]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP VIEW [ACCOUNT_CHAR_VIEW]
GO
/****** Object:  View [ACCOUNT_CHAR_VIEW]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  View dbo.ACCOUNT_CHAR_VIEW    Script Date: 6/6/2006 6:03:32 PM ******/
CREATE VIEW [ACCOUNT_CHAR_VIEW]
AS SELECT [dbo].[ACCOUNT_CHAR].[strAccountID]
FROM [dbo].[ACCOUNT_CHAR]

GO
