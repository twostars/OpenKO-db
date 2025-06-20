/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [EXEC_KNIGHTS_USER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [EXEC_KNIGHTS_USER]
GO
/****** Object:  StoredProcedure [EXEC_KNIGHTS_USER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.EXEC_KNIGHTS_USER    Script Date: 6/6/2006 6:03:32 PM ******/

-- create by sungyong 2002.09.16

CREATE PROCEDURE [EXEC_KNIGHTS_USER]
AS

SET NOCOUNT ON
DECLARE @strUserID char(21)
DECLARE @KnightsIndex smallint
DECLARE job1 CURSOR FOR

SELECT strUserID, Knights FROM USERDATA

OPEN job1
FETCH NEXT FROM job1
INTO @strUserID, @KnightsIndex
WHILE @@fetch_status = 0 
BEGIN
	IF @KnightsIndex <> 0
		BEGIN
			IF @KnightsIndex <> -1
			INSERT INTO KNIGHTS_USER ( sIDNum, strUserID ) VALUES (@KnightsIndex, @strUserID )
		END
	
	FETCH NEXT FROM job1
	INTO @strUserID, @KnightsIndex
END
CLOSE job1
DEALLOCATE job1
SET NOCOUNT OFF

GO
