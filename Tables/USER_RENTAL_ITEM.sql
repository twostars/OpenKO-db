/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister]
GO
ALTER TABLE [USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_sDuration]
GO
ALTER TABLE [USER_RENTAL_ITEM] DROP CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType]
GO
/****** Object:  Index [IX_USER_RENTAL_ITEM_1]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP INDEX [IX_USER_RENTAL_ITEM_1] ON [USER_RENTAL_ITEM]
GO
/****** Object:  Index [IX_USER_RENTAL_ITEM]    Script Date: 26/05/2025 6:47:30 AM ******/
DROP INDEX [IX_USER_RENTAL_ITEM] ON [USER_RENTAL_ITEM]
GO
/****** Object:  Table [USER_RENTAL_ITEM]    Script Date: 26/05/2025 6:47:30 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[USER_RENTAL_ITEM]') AND type in (N'U'))
DROP TABLE [USER_RENTAL_ITEM]
GO
/****** Object:  Table [USER_RENTAL_ITEM]    Script Date: 26/05/2025 6:47:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [USER_RENTAL_ITEM](
	[strUserID] [varchar](50) COLLATE Korean_Wansung_CI_AS NOT NULL,
	[strAccountID] [varchar](50) COLLATE Korean_Wansung_CI_AS NOT NULL,
	[byRentalType] [tinyint] NOT NULL,
	[byRegType] [tinyint] NOT NULL,
	[nRentalIndex] [int] NOT NULL,
	[nItemIndex] [int] NOT NULL,
	[sDurability] [smallint] NOT NULL,
	[nSerialNumber] [bigint] NOT NULL,
	[nRentalMoney] [int] NOT NULL,
	[sRentalTime] [smallint] NOT NULL,
	[sDuringTime] [smallint] NOT NULL,
	[timeRental] [smalldatetime] NULL,
	[timeRegister] [smalldatetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USER_RENTAL_ITEM]    Script Date: 26/05/2025 6:47:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_USER_RENTAL_ITEM] ON [USER_RENTAL_ITEM]
(
	[strAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_USER_RENTAL_ITEM_1]    Script Date: 26/05/2025 6:47:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_USER_RENTAL_ITEM_1] ON [USER_RENTAL_ITEM]
(
	[nItemIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD  CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType]  DEFAULT ((0)) FOR [byRegType]
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD  CONSTRAINT [DF_USER_RENTAL_ITEM_sDuration]  DEFAULT ((0)) FOR [sDurability]
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD  CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister]  DEFAULT (getdate()) FOR [timeRegister]
GO
