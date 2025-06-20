/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  User [knight]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP USER [knight]
GO
/****** Object:  User [knight]    Script Date: 26/05/2025 6:47:30 AM ******/
CREATE USER [knight] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[knight]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'knight'
GO
