/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [WEB_ITEMMALL] DROP CONSTRAINT [DF_WEB_ITEMMALL_BuyTime]
GO
ALTER TABLE [WEB_ITEMMALL] DROP CONSTRAINT [DF_WEB_ITEMMALL_ItemCount]
GO
/****** Object:  Table [WEB_ITEMMALL]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[WEB_ITEMMALL]') AND type in (N'U'))
DROP TABLE [WEB_ITEMMALL]
GO
/****** Object:  Table [WEB_ITEMMALL]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [WEB_ITEMMALL](
	[strAccountID] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] [char](21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ServerNo] [smallint] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemCount] [smallint] NOT NULL,
	[BuyTime] [smalldatetime] NOT NULL,
	[img_file_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[strItemName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price] [int] NULL,
	[pay_type] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WEB_ITEMMALL] ADD  CONSTRAINT [DF_WEB_ITEMMALL_ItemCount]  DEFAULT (1) FOR [ItemCount]
GO
ALTER TABLE [WEB_ITEMMALL] ADD  CONSTRAINT [DF_WEB_ITEMMALL_BuyTime]  DEFAULT (getdate()) FOR [BuyTime]
GO
