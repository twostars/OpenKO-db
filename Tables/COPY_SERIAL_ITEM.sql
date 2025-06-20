/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [COPY_SERIAL_ITEM]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[COPY_SERIAL_ITEM]') AND type in (N'U'))
DROP TABLE [COPY_SERIAL_ITEM]
GO
/****** Object:  Table [COPY_SERIAL_ITEM]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COPY_SERIAL_ITEM](
	[strUserId] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[byType] [tinyint] NULL,
	[nPos] [smallint] NULL,
	[ItemNum] [binary](4) NULL,
	[ItemSerial] [binary](8) NULL
) ON [PRIMARY]
GO
