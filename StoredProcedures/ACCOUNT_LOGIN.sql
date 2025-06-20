/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [ACCOUNT_LOGIN]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [ACCOUNT_LOGIN]
GO
/****** Object:  StoredProcedure [ACCOUNT_LOGIN]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [ACCOUNT_LOGIN]
	@AccountID	varchar(21),
	@Password	varchar(13),
	@nRet		smallint	OUTPUT
AS
DECLARE @Nation tinyint, @CharNum smallint, @pwd varchar(13)
SELECT @pwd = strPasswd FROM TB_USER WHERE strAccountID = @AccountID AND strAuthority != 255
IF @@ROWCOUNT = 0 OR @pwd != @Password 
BEGIN
	SET @nRet = 0
	RETURN
END

SELECT @Nation = bNation, @CharNum = bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
IF @@ROWCOUNT = 0 OR @CharNum = 0
	SET @nRet = 1
ELSE 
	SET @nRet = @Nation+1
GO
