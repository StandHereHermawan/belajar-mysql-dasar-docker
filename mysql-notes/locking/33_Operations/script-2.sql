START TRANSACTION;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah oleh user 2'
WHERE id = 12;

COMMIT;