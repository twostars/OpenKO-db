/****** Object:  Stored Procedure dbo.CHANGE_CASTLE_COMMERCE    Script Date: 6/6/2006 6:03:33 PM ******/
-- sungyong 2003.8.4 create
CREATE PROCEDURE [CHANGE_CASTLE_COMMERCE]
@sCastleIndex		smallint,
@byType		tinyint,
@nMoradonTariff	int,
@nDellosTariff		int,
@nMoney		int,
@strACID		char(21), 
@strCharID		char(21)

AS

if @byType = 2	 -- ¼¼±ÝÂ¡¼ö
BEGIN
	UPDATE KNIGHTS_SIEGE_WARFARE SET nMoradonTax = @nMoradonTariff, nDellosTax = @nDellosTariff WHERE sCastleIndex = @sCastleIndex

	INSERT INTO DELLOS_TAX ( strAccountID, strCharID, nTax, nUserMoney  ) 
	VALUES	 (@strACID, @strCharID, @nMoradonTariff+@nDellosTariff, @nMoney )
END
if @byType = 4	 -- moradon
	UPDATE KNIGHTS_SIEGE_WARFARE SET sMoradonTariff = @nMoradonTariff WHERE sCastleIndex = @sCastleIndex
if @byType = 5	 -- dellos
	UPDATE KNIGHTS_SIEGE_WARFARE SET sDellosTariff = @nMoradonTariff WHERE sCastleIndex = @sCastleIndex
if @byType = 6	 -- dungeon
	UPDATE KNIGHTS_SIEGE_WARFARE SET nDungeonCharge = @nMoradonTariff WHERE sCastleIndex = @sCastleIndex
if @byType = 7	 -- tax update
BEGIN
	UPDATE KNIGHTS_SIEGE_WARFARE SET nMoradonTax = @nMoradonTariff, nDellosTax = @nDellosTariff WHERE sCastleIndex = @sCastleIndex
END
