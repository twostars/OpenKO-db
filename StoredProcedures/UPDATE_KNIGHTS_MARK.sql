/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [UPDATE_KNIGHTS_MARK]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [UPDATE_KNIGHTS_MARK]
GO
/****** Object:  StoredProcedure [UPDATE_KNIGHTS_MARK]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.UPDATE_KNIGHTS_MARK    Script Date: 6/6/2006 6:03:32 PM ******/

-----------------------------------------------------------------------------------------------
-- UPDATE_KNIGHTS_MARK 프로시저 
-- 나이트 기사단 마크를 입력 받아서 Knights 테이블에 업데이트 하고 버전을 자동으로 올려주는 프로시저
-- 업데이트에 트랜젝션을 걸고 1을 리턴하면 정상 처리가 되것으로 생각한다.
-- (처음에 SET @nRet = 0가 의미가 있는지는 모르겠다 )
-- UpdateKnightMark.sql	2003.6.9	정영훈
-----------------------------------------------------------------------------------------------


CREATE PROC [UPDATE_KNIGHTS_MARK]
@nRet SMALLINT  OUTPUT,
@IDNum SMALLINT,@MarkLen SMALLINT, @KnightMark varbinary(2400)

AS

SET @nRet = 0

BEGIN TRAN
	
	UPDATE KNIGHTS
	SET Mark = @KnightMark,
	sMarkVersion = sMarkVersion + 1,
	sMarkLen = @MarkLen
	WHERE IDNum = @IDNum

COMMIT TRAN

SET @nRet = 1
RETURN

GO
