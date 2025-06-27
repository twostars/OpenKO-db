/****** Object:  Stored Procedure dbo.INSERT_HACKTOOL_USER    Script Date: 6/6/2006 6:03:33 PM ******/

-- scripted by sungyong 2003.11.18

CREATE PROCEDURE [INSERT_HACKTOOL_USER]
@AccountID 	char(21), 
@CharID		char(21),
@HackToolName 	char(512)

AS

INSERT INTO HACKTOOL_USERLOG ( strAccountID, strCharID, strHackToolName ) 
VALUES	                         (@AccountID, @CharID, @HackToolName )
