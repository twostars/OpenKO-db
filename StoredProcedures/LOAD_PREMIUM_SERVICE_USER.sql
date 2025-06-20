/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [LOAD_PREMIUM_SERVICE_USER]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [LOAD_PREMIUM_SERVICE_USER]
GO
/****** Object:  StoredProcedure [LOAD_PREMIUM_SERVICE_USER]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LOAD_PREMIUM_SERVICE_USER] 
        @AccountID varchar(21),
        @type int output, 
        @days int output 
AS 
BEGIN 
        DECLARE @PremiumExpire datetime

        SELECT @PremiumExpire = PremiumExpire FROM TB_USER WHERE strAccountID = @AccountID
        SET @days = DateDiff(dd, GetDate(), @PremiumExpire)
        SET @type = 1
        IF @days <= 0 OR @@ERROR <> 0 OR @days IS NULL
        BEGIN
                SET @type = 0
                SET @days = 0
        END
END
GO
