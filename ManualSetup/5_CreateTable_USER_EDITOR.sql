USE [Prototype]
GO

CREATE TABLE [USER_EDITOR] (
	[strCharID] char(21) NOT NULL,
	[strAccountID] char(21) NOT NULL,
	[strOpID] char(21) NOT NULL,
	[strOpIP] char(21) NOT NULL,
	[strOldUserValue] char(600) NOT NULL,
	[strNewUserValue] char(600) NOT NULL,
	[strOldUserSkill] char(10) NOT NULL,
	[strNewUserSkill] char(10) NOT NULL,
	[strOldUserItem] char(400) NOT NULL,
	[strNewUserItem] char(400) NOT NULL,
	[strOldWHValue] char(100) NOT NULL,
	[strNewWHValue] char(100) NOT NULL,
	[strOldWHItem] char(1600) NOT NULL,
	[strNewWHItem] char(1600) NOT NULL,
	[EditorTime] smalldatetime NOT NULL

)
GO
ALTER TABLE [USER_EDITOR] ADD CONSTRAINT [DF_USER_EDITOR_EditorTime] DEFAULT getdate() FOR [EditorTime]
GO
