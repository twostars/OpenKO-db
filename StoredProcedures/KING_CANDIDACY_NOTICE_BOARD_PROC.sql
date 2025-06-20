/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_CANDIDACY_NOTICE_BOARD_PROC]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_CANDIDACY_NOTICE_BOARD_PROC]
GO
/****** Object:  StoredProcedure [KING_CANDIDACY_NOTICE_BOARD_PROC]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_CANDIDACY_NOTICE_BOARD_PROC    Script Date: 6/6/2006 6:03:33 PM ******/


-- created by sungyong 2004.07.09

CREATE PROC [KING_CANDIDACY_NOTICE_BOARD_PROC]
@strUserID char(21),
@sNoticeLen smallint, 
@byNation tinyint, 
@strNotice varbinary(1024)

AS

declare @nRet smallint
SELECT @nRet = count(strUserID) FROM KING_CANDIDACY_NOTICE_BOARD WHERE  strUserID = @strUserID
IF @nRet > 0
	BEGIN
		UPDATE KING_CANDIDACY_NOTICE_BOARD
		SET sNoticeLen = @sNoticeLen,
		strNotice = @strNotice
		WHERE strUserID = @strUserID
	END
ELSE
	BEGIN
		INSERT INTO KING_CANDIDACY_NOTICE_BOARD (strUserID, byNation, sNoticeLen, strNotice )
		VALUES ( @strUserID, @byNation, @sNoticeLen, @strNotice )
	
	END


GO
