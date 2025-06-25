/* Template Args:
   1. User Name
   2. Default Schema Name
 */
USE [master]
GO
CREATE USER [knight] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[knight]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'knight'
GO
