/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [LOAD_KNIGHTS_MEMBERS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [LOAD_KNIGHTS_MEMBERS]
GO
/****** Object:  StoredProcedure [LOAD_KNIGHTS_MEMBERS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/****** Object:  Stored Procedure dbo.LOAD_KNIGHTS_MEMBERS    Script Date: 6/6/2006 6:03:32 PM ******/

-- Scripted by Sungyong
-- 2002.09.26

CREATE PROCEDURE [LOAD_KNIGHTS_MEMBERS]
@knightsindex	smallint
AS

SELECT strUserId, Fame, [Level], Class FROM USERDATA WHERE Knights = @knightsindex

--SET @nRet = 1
--RETURN

GO
