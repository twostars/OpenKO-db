/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [LOAD_WEB_ITEMMALL]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [LOAD_WEB_ITEMMALL]
GO
/****** Object:  StoredProcedure [LOAD_WEB_ITEMMALL]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.LOAD_WEB_ITEMMALL    Script Date: 6/6/2006 6:03:32 PM ******/



-- Created 2003.06.27 by Samma

CREATE PROCEDURE [LOAD_WEB_ITEMMALL]
@strCharID	char(21)
AS

SELECT strAccountID, ItemID, ItemCount, BuyTime FROM WEB_ITEMMALL WHERE strCharID = @strCharID

DELETE FROM WEB_ITEMMALL WHERE strCharID = @strCharID


GO
