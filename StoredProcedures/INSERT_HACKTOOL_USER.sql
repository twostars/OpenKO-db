/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [INSERT_HACKTOOL_USER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [INSERT_HACKTOOL_USER]
GO
/****** Object:  StoredProcedure [INSERT_HACKTOOL_USER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.INSERT_HACKTOOL_USER    Script Date: 6/6/2006 6:03:33 PM ******/

-- scripted by sungyong 2003.11.18

CREATE PROCEDURE [INSERT_HACKTOOL_USER]
@AccountID 	char(21), 
@CharID		char(21),
@HackToolName 	char(512)

AS

INSERT INTO HACKTOOL_USERLOG ( strAccountID, strCharID, strHackToolName ) 
VALUES	                         (@AccountID, @CharID, @HackToolName )

GO
