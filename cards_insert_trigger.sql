DROP TRIGGER IF EXISTS insertTrigger;

GO
CREATE TRIGGER insertTrigger
ON Cards
AFTER INSERT
AS
PRINT 'Inserted new card';

GO
EXEC createCard 'card5', 'Card', 'Creature', '';