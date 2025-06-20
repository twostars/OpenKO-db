/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Login [knight]    Script Date: 26/05/2025 6:59:05 AM ******/
DROP LOGIN [knight]
GO
/****** Object:  Login [knight]    Script Date: 26/05/2025 6:59:05 AM ******/
CREATE LOGIN [knight] WITH PASSWORD=N'knight', DEFAULT_DATABASE=[OpenKO], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [knight] ENABLE
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'sysadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'securityadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'serveradmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'setupadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'processadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'diskadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'dbcreator'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'bulkadmin'
GO
