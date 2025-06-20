/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [RENTAL_ITEM_DESTORY]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [RENTAL_ITEM_DESTORY]
GO
/****** Object:  StoredProcedure [RENTAL_ITEM_DESTORY]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.RENTAL_ITEM_DESTORY    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.03.26. sungyong

CREATE PROCEDURE [RENTAL_ITEM_DESTORY]
@AccountID	char(21),	
@CharID	char(21),		
@nItemNumber   int,
@nRentalIndex   int,
@nDurability	smallint,
@nRet		smallint OUTPUT

AS

DELETE FROM USER_RENTAL_ITEM WHERE strAccountID = @AccountID and nItemIndex = @nItemNumber

EXEC RENTAL_ITEM_DURABILITY_UPDATE @nRentalIndex, @nDurability

SET @nRet =  1


GO
