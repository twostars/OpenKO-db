/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_IMPEACHMENT_ELECTION]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_IMPEACHMENT_ELECTION]
GO
/****** Object:  StoredProcedure [KING_IMPEACHMENT_ELECTION]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_IMPEACHMENT_ELECTION    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [KING_IMPEACHMENT_ELECTION]
@byResult	tinyint,
@byNation	tinyint,
@strAccountID	char(21),		--     투표한 사람의 계정
@strCharID	char(21),		--     투표한 사람의 아이디
@nRet		smallint OUTPUT

AS

declare @nRow smallint

SELECT @nRow = count(strAccountID) FROM KING_BALLOT_BOX WHERE  strAccountID = @strAccountID
IF @nRow > 0		-- 투표를 한 사람
BEGIN
	SET @nRet = -3
	RETURN
END

IF @byResult = 1
BEGIN
	INSERT INTO KING_BALLOT_BOX (strAccountID, strCharID, byNation, strCandidacyID )
		VALUES ( @strAccountID, @strCharID, @byNation, 'Y' )
END
ELSE IF @byResult = 2
BEGIN
	INSERT INTO KING_BALLOT_BOX (strAccountID, strCharID, byNation, strCandidacyID )
		VALUES ( @strAccountID, @strCharID, @byNation, 'N' )
END

SET @nRet =  1
RETURN



GO
