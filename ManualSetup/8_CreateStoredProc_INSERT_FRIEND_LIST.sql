/****** Object:  Stored Procedure dbo.INSERT_FRIEND_LIST    Script Date: 6/6/2006 6:03:33 PM ******/


-- Create by Samma
-- 2003.08.22

CREATE PROCEDURE [INSERT_FRIEND_LIST]

@strUserID	char(21),
@strFriend	char(21),
@nRet		smallint OUTPUT

AS

DECLARE @strFriend1 char(21), @strFriend2 char(21), @strFriend3 char(21), @strFriend4 char(21), @strFriend5 char(21), @strFriend6 char(21)
DECLARE @strFriend7 char(21), @strFriend8 char(21), @strFriend9 char(21), @strFriend10 char(21), @strFriend11 char(21), @strFriend12 char(21)
DECLARE @strFriend13 char(21), @strFriend14 char(21), @strFriend15 char(21), @strFriend16 char(21), @strFriend17 char(21), @strFriend18 char(21)
DECLARE @strFriend19 char(21), @strFriend20 char(21), @strFriend21 char(21), @strFriend22 char(21), @strFriend23 char(21), @strFriend24 char(21) 

SELECT  @strFriend1 = strFriend1, @strFriend2 = strFriend2,@strFriend3 = strFriend3,@strFriend4 = strFriend4,
	@strFriend5 = strFriend5, @strFriend6 = strFriend6,@strFriend7 = strFriend7,@strFriend8 = strFriend8,
	@strFriend9 = strFriend9, @strFriend10 = strFriend10,@strFriend11 = strFriend11,@strFriend12 = strFriend12,
	@strFriend13 = strFriend13, @strFriend14 = strFriend14,@strFriend15 = strFriend15,@strFriend16 = strFriend16,
	@strFriend17 = strFriend17, @strFriend18 = strFriend18,@strFriend19 = strFriend19,@strFriend20 = strFriend20,
	@strFriend21 = strFriend21, @strFriend22 = strFriend22,@strFriend23 = strFriend23,@strFriend24 = strFriend24  From FRIEND_LIST WHERE strUserID = @strUserID

IF @@rowcount = 0
BEGIN
	INSERT INTO FRIEND_LIST ( strUserID, strFriend1 ) VALUES ( @strUserID, @strFriend )
	IF @@error <> 0
		SET @nRet = 1	-- fail
	ELSE
		SET @nRet = 0	-- success
	RETURN
END

ELSE
BEGIN
	IF @strFriend1 is NULL
		UPDATE FRIEND_LIST SET strFriend1= @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend2 is NULL
		UPDATE FRIEND_LIST SET strFriend2 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend3 is NULL
		UPDATE FRIEND_LIST SET strFriend3 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend4 is NULL
		UPDATE FRIEND_LIST SET strFriend4 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend5 is NULL
		UPDATE FRIEND_LIST SET strFriend5 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend6 is NULL
		UPDATE FRIEND_LIST SET strFriend6 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend7 is NULL
		UPDATE FRIEND_LIST SET strFriend7 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend8 is NULL
		UPDATE FRIEND_LIST SET strFriend8 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend9 is NULL
		UPDATE FRIEND_LIST SET strFriend9 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend10 is NULL
		UPDATE FRIEND_LIST SET strFriend10 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend11 is NULL
		UPDATE FRIEND_LIST SET strFriend11 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend12 is NULL
		UPDATE FRIEND_LIST SET strFriend12 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend13 is NULL
		UPDATE FRIEND_LIST SET strFriend13 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend14 is NULL
		UPDATE FRIEND_LIST SET strFriend14 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend15 is NULL
		UPDATE FRIEND_LIST SET strFriend15 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend16 is NULL
		UPDATE FRIEND_LIST SET strFriend16 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend17 is NULL
		UPDATE FRIEND_LIST SET strFriend17 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend18 is NULL
		UPDATE FRIEND_LIST SET strFriend18 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend19 is NULL
		UPDATE FRIEND_LIST SET strFriend19 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend20 is NULL
		UPDATE FRIEND_LIST SET strFriend20 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend21 is NULL
		UPDATE FRIEND_LIST SET strFriend21 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend22 is NULL
		UPDATE FRIEND_LIST SET strFriend22 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend23 is NULL
		UPDATE FRIEND_LIST SET strFriend23 = @strFriend WHERE strUserID = @strUserID
	ELSE IF @strFriend24 is NULL
		UPDATE FRIEND_LIST SET strFriend24 = @strFriend WHERE strUserID = @strUserID
	ELSE
	BEGIN
		SET @nRet = 2	-- friend list full
		RETURN
	END
	
	IF @@error <> 0
		SET @nRet = 1
	ELSE
		SET @nRet = 0

END
