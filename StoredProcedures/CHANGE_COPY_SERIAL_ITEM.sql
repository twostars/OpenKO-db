/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [CHANGE_COPY_SERIAL_ITEM]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [CHANGE_COPY_SERIAL_ITEM]
GO
/****** Object:  StoredProcedure [CHANGE_COPY_SERIAL_ITEM]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.CHANGE_COPY_SERIAL_ITEM    Script Date: 6/6/2006 6:03:34 PM ******/
CREATE PROCEDURE [CHANGE_COPY_SERIAL_ITEM]
AS
EXEC CHANGE_COPY_SERIAL_ITEM_TABLE
EXEC CHANGE_COPY_SERIAL_ITEM_DATA
GO
