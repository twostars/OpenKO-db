/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  StoredProcedure [RESET_LOYALTY_MONTHLY]    Script Date: 26/05/2025 6:47:29 AM ******/
DROP PROCEDURE [RESET_LOYALTY_MONTHLY]
GO
/****** Object:  StoredProcedure [RESET_LOYALTY_MONTHLY]    Script Date: 26/05/2025 6:47:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Stored Procedure dbo.RESET_LOYALTY_MONTHLY    Script Date: 6/6/2006 6:03:32 PM ******/



--
-- 월간 기여도 초기화
-- 2004. 4. 22 : Arycoat
-- 입력값 : 없음
-- 출력값 : 없음
--

CREATE PROC [RESET_LOYALTY_MONTHLY] AS

UPDATE USERDATA
	SET LoyaltyMonthly = 0
	WHERE LoyaltyMonthly != 0




GO
