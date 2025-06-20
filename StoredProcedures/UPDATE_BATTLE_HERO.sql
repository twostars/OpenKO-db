/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [UPDATE_BATTLE_HERO]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [UPDATE_BATTLE_HERO]
GO
/****** Object:  StoredProcedure [UPDATE_BATTLE_HERO]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.UPDATE_BATTLE_HERO    Script Date: 6/6/2006 6:03:34 PM ******/

-- sungyong 2003.1.21 create

CREATE PROCEDURE [UPDATE_BATTLE_HERO]
@strCharID		char(21),
@strNation		char(20),
@strClass		char(30),
@strAchievement		char(50),
@nIndex			smallint

AS

DECLARE @nRet int
SET @nRet = 0

SELECT @nRet = COUNT(strUserID) FROM HERO_USER WHERE shIndex = @nIndex
IF @nRet = 0
	INSERT INTO HERO_USER ( strUserID, strNation, strClass, strAchievement, shIndex )
         	VALUES ( @strCharID, @strNation, @strClass, @strAchievement, @nIndex )
ELSE
	UPDATE HERO_USER SET strUserID = @strCharID, strNation = @strNation, strClass = @strClass, 
		strAchievement = @strAchievement WHERE shIndex = @nIndex

GO
