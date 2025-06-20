/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [UPDATE_EDITOR_ITEM_DATA]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [UPDATE_EDITOR_ITEM_DATA]
GO
/****** Object:  StoredProcedure [UPDATE_EDITOR_ITEM_DATA]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.UPDATE_EDITOR_ITEM_DATA    Script Date: 6/6/2006 6:03:34 PM ******/

-- Created By Sungyong 2004. 06. 17

CREATE  PROCEDURE [UPDATE_EDITOR_ITEM_DATA]
	@charid 		varchar(21),
	@accountid 		varchar(21),
	@opid 			varchar(21),
	@opip 			varchar(21),
	@sPos			smallint,
	@nItemID1		int,
	@nItemID2		int,
	@byType			tinyint,
	@sDBIndex		smallint
	

AS

IF @sDBIndex = 60
	return

INSERT INTO USER_EDITOR_ITEM (strCharID, strAccountID, strOpID, strOpIP, sDBIndex, sPos, byType, nItemID1, nItemID2, UpdateTime )
	VALUES	 (@charid, @accountid, @opid, @opip, @sDBIndex, @sPos, @byType, @nItemID1, @nItemID2, getdate() )


GO
