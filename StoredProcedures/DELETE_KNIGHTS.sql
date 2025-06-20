/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [DELETE_KNIGHTS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [DELETE_KNIGHTS]
GO
/****** Object:  StoredProcedure [DELETE_KNIGHTS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.DELETE_KNIGHTS    Script Date: 6/6/2006 6:03:32 PM ******/


CREATE PROCEDURE [DELETE_KNIGHTS]
@nRet			smallint OUTPUT,
@knightsindex		smallint
AS

DECLARE @Row	tinyint, @Knights smallint, @Fame tinyint, @UserID char(21)
		SET @Row = 0 SET @Knights = 0 SET @Fame = 0 SET @UserID = ''


-- sungyong modify
SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDNum = @knightsindex
	IF @Row = 0
	BEGIN
		SET @nRet = 7
		RETURN
	END

BEGIN TRAN

	DELETE FROM KNIGHTS WHERE IDNum = @knightsindex
	DELETE FROM KNIGHTS_USER WHERE sIDNum = @knightsindex

	IF @@ERROR <> 0
	BEGIN
		ROLLBACK TRAN
		SET @nRet = 7
		RETURN 
	END

	-- UPDATE USERDATA SET Knights = 0, Fame = 0 WHERE Knights = @knightsindex

COMMIT TRAN
SET @nRet = 0

GO
