/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [EDITER_KNIGHTS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [EDITER_KNIGHTS]
GO
/****** Object:  StoredProcedure [EDITER_KNIGHTS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.EDITER_KNIGHTS    Script Date: 6/6/2006 6:03:32 PM ******/

-- Create sungyong

CREATE PROCEDURE [EDITER_KNIGHTS]
AS

SET NOCOUNT ON
DECLARE @KnightsIndex smallint
DECLARE job1 CURSOR FOR

SELECT IDNum FROM KNIGHTS

OPEN job1
FETCH NEXT FROM job1
INTO @KnightsIndex
WHILE @@fetch_status = 0 
BEGIN
	DECLARE @LEVEL INT
	DECLARE @ROW INT
	SET @LEVEL = 0

	SELECT @ROW = COUNT([strUserId]) FROM [USERDATA] WHERE Knights = @KnightsIndex
	IF @ROW <> 0
		BEGIN
			UPDATE KNIGHTS SET [Members]=@Row WHERE IDNum = @KnightsIndex
		END
	ELSE
		BEGIN
			DELETE FROM KNIGHTS WHERE IDNum = @knightsindex
		ENd
	
	FETCH NEXT FROM job1
	INTO @KnightsIndex
END
CLOSE job1
DEALLOCATE job1
SET NOCOUNT OFF

GO
