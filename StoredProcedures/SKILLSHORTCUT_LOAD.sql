/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [SKILLSHORTCUT_LOAD]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [SKILLSHORTCUT_LOAD]
GO
/****** Object:  StoredProcedure [SKILLSHORTCUT_LOAD]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.SKILLSHORTCUT_LOAD    Script Date: 6/6/2006 6:03:32 PM ******/



CREATE proc [SKILLSHORTCUT_LOAD]

@strCharID varchar(21)

as

select nCount, strSkillData from dbo.USERDATA_SKILLSHORTCUT where strCharID = @strCharID





GO
