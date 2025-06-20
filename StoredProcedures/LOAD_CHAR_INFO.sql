/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [LOAD_CHAR_INFO]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [LOAD_CHAR_INFO]
GO
/****** Object:  StoredProcedure [LOAD_CHAR_INFO]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.LOAD_CHAR_INFO    Script Date: 6/6/2006 6:03:32 PM ******/

-- Scripted by Samma
-- 2002.01.18
-- modifed by Sungyong 2002.10.29 ,, add zone filed

CREATE PROCEDURE [LOAD_CHAR_INFO]
@CharId	varchar(21),
@nRet		smallint OUTPUT
AS

SELECT @nRet = COUNT(strUserId) FROM USERDATA WHERE strUserId = @CharId
IF @nRet = 0
	RETURN

SELECT Race, Class, HairColor, [Level], Face, Zone, strItem FROM USERDATA WHERE strUserID = @CharId

SET @nRet = 1
RETURN

GO
