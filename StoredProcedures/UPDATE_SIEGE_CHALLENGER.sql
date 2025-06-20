/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [UPDATE_SIEGE_CHALLENGER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [UPDATE_SIEGE_CHALLENGER]
GO
/****** Object:  StoredProcedure [UPDATE_SIEGE_CHALLENGER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.UPDATE_SIEGE_CHALLENGER    Script Date: 6/6/2006 6:03:34 PM ******/

-- sungyong 2003.7.2 create

CREATE PROCEDURE [UPDATE_SIEGE_CHALLENGER]
@sCastleIndex		smallint,
@strChallengerList	char(50)

AS


UPDATE KNIGHTS_SIEGE_WARFARE SET strChallengeList = @strChallengerList
	 WHERE sCastleIndex = @sCastleIndex

GO
