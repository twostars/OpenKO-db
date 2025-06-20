/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [UPDATE_KNIGHTS_WAR]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [UPDATE_KNIGHTS_WAR]
GO
/****** Object:  StoredProcedure [UPDATE_KNIGHTS_WAR]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.UPDATE_KNIGHTS_WAR    Script Date: 6/6/2006 6:03:32 PM ******/

-- Created By Sungyong 2003.02.06

CREATE PROCEDURE [UPDATE_KNIGHTS_WAR]
@byType		tinyint,
@shWhite		smallint,
@shBlue		smallint

AS

DECLARE @strWhiteName char(21)
DECLARE @strBlueName char(21)

SET @strWhiteName = NULL
SET @strBlueName = NULL

IF @byType = 1
BEGIN
	SELECT @strWhiteName = IDName FROM KNIGHTS WHERE IDNum = @shWhite
	SELECT @strBlueName = IDName FROM KNIGHTS WHERE IDNum = @shBlue
	UPDATE KNIGHTS SET nWarEnemyID = @shBlue, strEnemyName = @strBlueName WHERE IDNum = @shWhite
	UPDATE KNIGHTS SET nWarEnemyID = @shWhite, strEnemyName = @strWhiteName WHERE IDNum = @shBlue
END
ELSE IF @byType = 2
BEGIN
	UPDATE KNIGHTS SET byOldWarResult = 2, nLose = nLose+1, nWarEnemyID = 0 WHERE IDNum = @shWhite	-- lose team
	UPDATE KNIGHTS SET byOldWarResult = 1, nVictory = nVictory+1, nWarEnemyID = 0 WHERE IDNum = @shBlue	-- victory team
END

GO
