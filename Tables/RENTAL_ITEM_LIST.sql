/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister]
GO
ALTER TABLE [RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType]
GO
ALTER TABLE [RENTAL_ITEM_LIST] DROP CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability]
GO
/****** Object:  Table [RENTAL_ITEM_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[RENTAL_ITEM_LIST]') AND type in (N'U'))
DROP TABLE [RENTAL_ITEM_LIST]
GO
/****** Object:  Table [RENTAL_ITEM_LIST]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RENTAL_ITEM_LIST](
	[nRentalIndex] [int] NOT NULL,
	[nItemIndex] [int] NOT NULL,
	[sDurability] [smallint] NOT NULL,
	[nSerialNumber] [bigint] NOT NULL,
	[byRegType] [tinyint] NOT NULL,
	[byItemType] [tinyint] NOT NULL,
	[byClass] [tinyint] NOT NULL,
	[sRentalTime] [smallint] NOT NULL,
	[nRentalMoney] [int] NOT NULL,
	[strLenderCharID] [char](21) COLLATE Korean_Wansung_CI_AS NOT NULL,
	[strLenderAcID] [char](21) COLLATE Korean_Wansung_CI_AS NOT NULL,
	[strBorrowerCharID] [char](21) COLLATE Korean_Wansung_CI_AS NULL,
	[strBorrowerAcID] [char](21) COLLATE Korean_Wansung_CI_AS NULL,
	[timeLender] [smalldatetime] NULL,
	[timeRegister] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD  CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability]  DEFAULT (0) FOR [sDurability]
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD  CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType]  DEFAULT (0) FOR [byRegType]
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD  CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister]  DEFAULT (getdate()) FOR [timeRegister]
GO
