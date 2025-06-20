/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [INSERT_PROGRAM_CHECK_USER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [INSERT_PROGRAM_CHECK_USER]
GO
/****** Object:  StoredProcedure [INSERT_PROGRAM_CHECK_USER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [INSERT_PROGRAM_CHECK_USER]
	@strAccountID varchar(21),
	@strCharID    varchar(21),
	@HackToolName varchar(1024)
AS
BEGIN
	INSERT INTO PROGRAMLIST_LOG (strAccountID, strCharID, strHackToolName) VALUES(@strAccountID, @strCharID, @HackToolName)
END
GO
