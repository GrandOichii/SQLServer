DROP FUNCTION IF EXISTS getCardName;

GO
CREATE FUNCTION getCardName(@card_key VARCHAR(20))
RETURNS VARCHAR(30)
BEGIN
    DECLARE @result VARCHAR(30)
    SET @result = ''

    SELECT @result = name
    FROM Cards
    WHERE card_key = @card_key

    RETURN @result
END;

GO
SELECT dbo.getCardName('card1');