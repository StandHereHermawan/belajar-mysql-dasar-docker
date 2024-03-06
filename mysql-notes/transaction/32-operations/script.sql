START TRANSACTION;

INSERT INTO guestbooks (email, title, content)
VALUES ('example1@proton.com','test','test'),
       ('example2@proton.com','test','test'),
       ('example3@proton.com','test','test'),
       ('example4@proton.com','test','test');

SELECT * FROM guestbooks;

COMMIT;

START TRANSACTION;

DELETE FROM guestbooks;

SELECT * FROM guestbooks;

ROLLBACK;
-- Hanya bisa operasi CRUD atau Data Manipulation Language.