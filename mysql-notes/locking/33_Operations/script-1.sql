START TRANSACTION;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah oleh user 1'
WHERE id = 12;

COMMIT;