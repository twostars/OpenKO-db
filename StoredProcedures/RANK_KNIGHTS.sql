/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [RANK_KNIGHTS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [RANK_KNIGHTS]
GO
/****** Object:  StoredProcedure [RANK_KNIGHTS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [RANK_KNIGHTS]
AS

UPDATE KNIGHTS SET Points=0

SET NOCOUNT ON
DECLARE @KnightsIndex smallint
DECLARE @SumLoyalty int
DECLARE job1 CURSOR FOR

SELECT IDNum FROM KNIGHTS

OPEN job1
FETCH NEXT FROM job1
INTO @KnightsIndex
WHILE @@fetch_status = 0 
BEGIN

	SET @SumLoyalty = 0
	SELECT @SumLoyalty=Sum(Loyalty) FROM USERDATA WHERE Knights = @Knightsindex and City <> 255 
	IF @SumLoyalty <> 0
		UPDATE KNIGHTS SET Points = @SumLoyalty WHERE IDNum = @knightsindex and IDNum NOT in (140)

	FETCH NEXT FROM job1
	INTO @KnightsIndex
END
CLOSE job1
DEALLOCATE job1
SET NOCOUNT OFF

-- ranking 
UPDATE KNIGHTS SET Ranking=0 WHERE Ranking>0

-- ranking procedure call
EXEC KNIGHTS_RATING_UPDATE 

DECLARE @Knights_1 smallint
DECLARE @Knights_2 smallint
DECLARE @Knights_3 smallint
DECLARE @Knights_4 smallint
DECLARE @Knights_5 smallint

SELECT @Knights_1 = shIndex FROM KNIGHTS_RATING WHERE nRank=1
SELECT @Knights_2 = shIndex FROM KNIGHTS_RATING WHERE nRank=2
SELECT @Knights_3 = shIndex FROM KNIGHTS_RATING WHERE nRank=3
SELECT @Knights_4 = shIndex FROM KNIGHTS_RATING WHERE nRank=4
SELECT @Knights_5 = shIndex FROM KNIGHTS_RATING WHERE nRank=5

UPDATE KNIGHTS SET Ranking=1 WHERE IDNum=@Knights_1
UPDATE KNIGHTS SET Ranking=2 WHERE IDNum=@Knights_2
UPDATE KNIGHTS SET Ranking=3 WHERE IDNum=@Knights_3
UPDATE KNIGHTS SET Ranking=4 WHERE IDNum=@Knights_4
UPDATE KNIGHTS SET Ranking=5 WHERE IDNum=@Knights_5
GO
