/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_CHANGE_TAX]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_CHANGE_TAX]
GO
/****** Object:  StoredProcedure [KING_CHANGE_TAX]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_CHANGE_TAX    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROC [KING_CHANGE_TAX]
@byType tinyint,
@byNation tinyint,
@nKarusTax1	int, 
@nKarusTax2	int,
@nKarusTax3	int,
@nElmoTax1	int,
@nElmoTax2     int,
@nElmoTax3     int

AS

IF @byType = 4	-- 세율변경
	BEGIN
		UPDATE KING_SYSTEM
		SET byTerritoryTariff = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 2	-- 세금징수
	BEGIN
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 5	-- 조공징수
	BEGIN
		UPDATE KING_SYSTEM
		SET nTribute = @nKarusTax1
		WHERE byNation = @byNation
	END
ELSE IF @byType = 6	-- 
	BEGIN
		-- 카루스 세금 걷어들이기
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nKarusTax1, nTribute = @nKarusTax2, nNationalTreasury = @nKarusTax3
		WHERE byNation = 1

		-- 엘모 세금 걷어들이기
		UPDATE KING_SYSTEM
		SET nTerritoryTax = @nElmoTax1, nTribute = @nElmoTax2, nNationalTreasury = @nElmoTax3
		WHERE byNation = 2
	END


GO
