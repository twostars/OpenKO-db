/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [PROC_INSERT_CURRENTUSER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [PROC_INSERT_CURRENTUSER]
GO
/****** Object:  StoredProcedure [PROC_INSERT_CURRENTUSER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [PROC_INSERT_CURRENTUSER]
	@AccountID varchar(21),
	@CharID varchar(21),
	@nServerNo smallint,
	@strServerIP varchar(15),
	@ClientIP varchar(15),
	@nRet smallint output
AS
INSERT INTO CURRENTUSER (strAccountID, strCharID, nServerNo, strServerIP, strClientIP ) Values (@AccountID, @CharID, @nServerNo, @strServerIP, @ClientIP )
SET @nRet = 1
GO
