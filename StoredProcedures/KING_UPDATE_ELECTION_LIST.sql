/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_UPDATE_ELECTION_LIST]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_UPDATE_ELECTION_LIST]
GO
/****** Object:  StoredProcedure [KING_UPDATE_ELECTION_LIST]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_UPDATE_ELECTION_LIST    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROC [KING_UPDATE_ELECTION_LIST]
@byDBType tinyint,
@byType tinyint,
@byNation tinyint,
@nKnights smallint,
@nAmount int,
@strUserID varchar(21)

AS

IF @byDBType = 1
BEGIN
	INSERT INTO KING_ELECTION_LIST (byType, byNation, nKnights, strName, nMoney )
	VALUES ( @byType, @byNation, @nKnights, @strUserID, @nAmount )
END
ELSE IF @byDBType = 2
BEGIN
	DELETE FROM KING_ELECTION_LIST
	WHERE byType = @byType and strName = @strUserID
END

IF @byType = 1
begin
	UPDATE KING_SYSTEM SET strKingName = @strUserID WHERE byNation = @byNation
end


GO
