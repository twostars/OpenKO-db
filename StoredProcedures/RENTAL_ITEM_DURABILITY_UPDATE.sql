/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [RENTAL_ITEM_DURABILITY_UPDATE]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [RENTAL_ITEM_DURABILITY_UPDATE]
GO
/****** Object:  StoredProcedure [RENTAL_ITEM_DURABILITY_UPDATE]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.RENTAL_ITEM_DURABILITY_UPDATE    Script Date: 6/6/2006 6:03:34 PM ******/



-- 2004.04.22. sungyong
CREATE PROCEDURE [RENTAL_ITEM_DURABILITY_UPDATE]
@nRentalIndex  int,
@nDurability   int

AS

DECLARE @Row tinyint
DECLARE @LendercharID char(21), @LenderAccountID char(21)

SET @Row = 0

SELECT @LendercharID = strLenderCharID, @LenderAccountID = strLenderAcID
FROM RENTAL_ITEM_LIST 
WHERE nRentalIndex = @nRentalIndex

-- 임대자정보에 내구력 업데이트
UPDATE USER_RENTAL_ITEM
SET sDurability = @nDurability
WHERE strAccountID = @LenderAccountID and nRentalIndex = @nRentalIndex


GO
