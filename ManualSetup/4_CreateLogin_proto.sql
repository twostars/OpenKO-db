/* Template Args:
   1. Login Name
   2. Default Database Name
   3. Password
 */
USE [master]
GO
CREATE LOGIN [proto] WITH PASSWORD=N'proto', DEFAULT_DATABASE=[Prototype], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [proto] ENABLE
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'sysadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'securityadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'serveradmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'setupadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'processadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'diskadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'dbcreator'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'proto', @rolename = N'bulkadmin'
GO