/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [CHANGE_KNIGHTS_CAPE]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [CHANGE_KNIGHTS_CAPE]
GO
/****** Object:  StoredProcedure [CHANGE_KNIGHTS_CAPE]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.CHANGE_KNIGHTS_CAPE    Script Date: 6/6/2006 6:03:32 PM ******/

-- created by sungyong 2003.08.01

CREATE PROCEDURE [CHANGE_KNIGHTS_CAPE]
@KnightsIndex	smallint,
@CapeIndex	smallint

AS

UPDATE KNIGHTS SET sCape  = @CapeIndex WHERE IDNum = @KnightsIndex

GO
