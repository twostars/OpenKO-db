/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [CREATE_KNIGHTS2]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [CREATE_KNIGHTS2]
GO
/****** Object:  StoredProcedure [CREATE_KNIGHTS2]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.CREATE_KNIGHTS2    Script Date: 6/6/2006 6:03:32 PM ******/


CREATE PROCEDURE [CREATE_KNIGHTS2]

@nRet		smallint OUTPUT, 
@index 		smallint OUTPUT,
@nation		tinyint,
@community	tinyint,
@strName 	char(21), 
@strChief	char(21)

AS

DECLARE @Row tinyint, @knightsindex smallint, @knightsname char(21)
	SET @Row = 0	SET @knightsindex = 0  SET @knightsname = ''

	SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDNum = @index
	
	IF @Row > 0 or @index = 0
	BEGIN
		SET @nRet =  1
		RETURN
	END
	
BEGIN TRAN	

	INSERT INTO KNIGHTS ( IDNum, Nation, Flag, IDName, Chief  ) 
	VALUES	 (@index, @nation, @community, @strName, @strChief )
	
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  2
		RETURN
	END

	UPDATE USERDATA SET Knights = @index, Fame = 1 WHERE strUserId = @strChief	-- 1 == Chief Authority
	
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  3
		RETURN
	END

COMMIT TRAN
SET @nRet =  0

GO
