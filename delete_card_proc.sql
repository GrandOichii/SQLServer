DROP PROCEDURE IF EXISTS deleteCard;
GO
CREATE PROCEDURE deleteCard(@key VARCHAR(20))
AS BEGIN
    DELETE FROM Cards
    WHERE card_key = @key
END;

GO
EXEC deleteCard 'card5';