/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [CLEAR_REMAIN_USERS]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [CLEAR_REMAIN_USERS]
GO
/****** Object:  StoredProcedure [CLEAR_REMAIN_USERS]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [CLEAR_REMAIN_USERS] 
@strServerIP varchar(15)
 AS
DELETE  FROM  CURRENTUSER WHERE strServerIP = @strServerIP
GO
