/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [RENTAL_ITEM_CANCEL]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [RENTAL_ITEM_CANCEL]
GO
/****** Object:  StoredProcedure [RENTAL_ITEM_CANCEL]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.RENTAL_ITEM_CANCEL    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.03.26. sungyong

CREATE PROCEDURE [RENTAL_ITEM_CANCEL]
@AccountID	char(21),		--     등록자 계정
@CharID	char(21),			--     등록자 캐릭 아이디
@nRentalIndex  int,
@nItemNumber   int,
@nRet		smallint OUTPUT

AS

--SET @Row = 0

-- rentallist 삭제
DELETE FROM RENTAL_ITEM WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

-- 임대자정보에 대여정보 삭제
DELETE FROM USER_RENTAL_ITEM WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

SET @nRet =  1


GO
