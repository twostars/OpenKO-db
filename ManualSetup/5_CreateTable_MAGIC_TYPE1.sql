USE [Prototype]
GO

CREATE TABLE [MAGIC_TYPE1] (
	[iNum] int NOT NULL,
	[Name] varchar(50),
	[Description] varchar(100),
	[Type] tinyint NOT NULL,
	[HitRate] smallint NOT NULL,
	[Hit] smallint NOT NULL,
	[AddDamage] smallint NOT NULL,
	[Delay] tinyint NOT NULL,
	[ComboType] tinyint NOT NULL,
	[ComboCount] tinyint NOT NULL,
	[ComboDamage] smallint NOT NULL,
	[Range] smallint NOT NULL

)
GO
