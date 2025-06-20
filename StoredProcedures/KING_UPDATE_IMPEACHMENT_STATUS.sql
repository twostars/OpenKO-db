/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_UPDATE_IMPEACHMENT_STATUS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_UPDATE_IMPEACHMENT_STATUS]
GO
/****** Object:  StoredProcedure [KING_UPDATE_IMPEACHMENT_STATUS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_UPDATE_IMPEACHMENT_STATUS    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.13

CREATE PROC [KING_UPDATE_IMPEACHMENT_STATUS]
@byType tinyint,
@byNation tinyint,
@sYear smallint,
@byMonth tinyint,
@byDay tinyint,
@byHour tinyint,
@byMinute tinyint,
@strUserID char(21)

AS



IF @byType = 1				-- 탄핵신청
	BEGIN
		UPDATE KING_SYSTEM
		SET byImType = @byType, sImYear = @sYear, byImMonth = @byMonth, byImDay = @byDay, byImHour = @byHour, byImMinute = @byMinute, strImRequestID = @strUserID
		WHERE byNation = @byNation
	
		UPDATE KING_ELECTION_LIST
		SET nKnights = 0
		WHERE byNation = @byNation
	
		UPDATE KING_ELECTION_LIST
		SET nKnights = 1
		WHERE byNation = @byNation and strName = @strUserID
	
		DELETE FROM KING_BALLOT_BOX WHERE byNation = @byNation
	END
ELSE IF @byType = 0	
	BEGIN
		UPDATE KING_SYSTEM
		SET byImType = @byType, sImYear = 0, byImMonth = 0, byImDay = 0, byImHour = 0, byImMinute = 0, strImRequestID = null
		WHERE byNation = @byNation
	
		UPDATE KING_ELECTION_LIST
		SET nKnights = 0
		WHERE byNation = @byNation

		DELETE FROM KING_BALLOT_BOX WHERE byNation = @byNation
	END
ELSE
	BEGIN
		UPDATE KING_SYSTEM
		SET byImType = @byType
		WHERE byNation = @byNation
	END


GO
