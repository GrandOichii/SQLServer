DROP PROCEDURE IF EXISTS createCard;
GO
CREATE PROCEDURE createCard(@key VARCHAR(20), @name VARCHAR(30), @type VARCHAR(30), @text VARCHAR(30))
AS BEGIN
    INSERT INTO Cards(card_key, name, type, text) VALUES (@key, @name, @type, @text)
END;

GO
EXEC createCard 'card1', 'Card', 'Creature', '';