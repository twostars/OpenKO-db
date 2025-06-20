/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_UPDATE_ELECTION_SCHDULE]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_UPDATE_ELECTION_SCHDULE]
GO
/****** Object:  StoredProcedure [KING_UPDATE_ELECTION_SCHDULE]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_UPDATE_ELECTION_SCHDULE    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [KING_UPDATE_ELECTION_SCHDULE]
@byType	tinyint,
@byNation	tinyint,
@sYear		smallint,
@byMonth	tinyint,
@byDay	tinyint,
@byHour	tinyint,
@byMinute	tinyint

AS

IF @byType = 0
	begin
		UPDATE KING_SYSTEM SET byType=@byType, sYear=@sYear, byMonth=@byMonth, byDay=@byDay, byHour=@byHour, byMinute=@byMinute,
					 byImType = 0, sImYear=0, byImMonth=0, byImDay=0, byImHour=0, byImMinute=0, strKingName=null
		WHERE byNation = @byNation
	end
else
	begin
		UPDATE KING_SYSTEM SET byType=@byType, sYear=@sYear, byMonth=@byMonth, byDay=@byDay, byHour=@byHour, byMinute=@byMinute
		WHERE byNation = @byNation
	end


GO
