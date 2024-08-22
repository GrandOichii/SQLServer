DROP TRIGGER IF EXISTS deleteTrigger;

GO
CREATE TRIGGER deleteTrigger
ON Cards
FOR DELETE
AS
BEGIN
    DECLARE @key VARCHAR(20)
    SELECT @key = card_key FROM DELETED
    PRINT 'Deleting card ' + @key
END;

GO
EXEC createCard 'card1', 'Card', 'Creature', '';

GO
EXEC deleteCard 'card1';

GO
select * from Cards;