/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [COUPON_SERIAL_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[COUPON_SERIAL_LIST]') AND type in (N'U'))
DROP TABLE [COUPON_SERIAL_LIST]
GO
/****** Object:  Table [COUPON_SERIAL_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COUPON_SERIAL_LIST](
	[nIndex] [int] NOT NULL,
	[strSerialNum] [char](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nItemNum] [int] NOT NULL,
	[sItemCount] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [COUPON_SERIAL_LIST] VALUES (1, N'1               ', 1, 1)
GO
