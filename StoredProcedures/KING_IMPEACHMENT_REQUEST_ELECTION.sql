/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [KING_IMPEACHMENT_REQUEST_ELECTION]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [KING_IMPEACHMENT_REQUEST_ELECTION]
GO
/****** Object:  StoredProcedure [KING_IMPEACHMENT_REQUEST_ELECTION]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.KING_IMPEACHMENT_REQUEST_ELECTION    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.13

CREATE PROC [KING_IMPEACHMENT_REQUEST_ELECTION]
@byType smallint,
@byNation tinyint,
@strUserID char(21)

AS

UPDATE KING_ELECTION_LIST
SET nKnights = @byType
WHERE strName = @strUserID and byType = 2


GO
