/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [LOAD_ACCOUNT_CHARID]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [LOAD_ACCOUNT_CHARID]
GO
/****** Object:  StoredProcedure [LOAD_ACCOUNT_CHARID]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.LOAD_ACCOUNT_CHARID    Script Date: 6/6/2006 6:03:33 PM ******/



-- Scripted by Samma
-- 2002.01.18

CREATE PROCEDURE [LOAD_ACCOUNT_CHARID]
@Accountid 	varchar(21)
AS

SELECT strCharID1, strCharID2, strCharID3, NULL, NULL FROM ACCOUNT_CHAR WHERE strAccountID = @Accountid

RETURN @@ROWCOUNT

GO
