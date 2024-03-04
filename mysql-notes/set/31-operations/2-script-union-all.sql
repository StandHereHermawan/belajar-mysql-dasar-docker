CREATE TABLE guestbooks (
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR(100),
title VARCHAR(100),
content TEXT,
PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT * FROM customers;

INSERT INTO guestbooks (email, title, content)
VALUES ('guest1@proton.com','Guest','Visit'),
       ('guest2@proton.com','Guest','Visit'),
       ('guest3@proton.com','Guest','Visit'),
       ('guest4@proton.com','Guest','Visit'),
       ('orangbelajar@proton.com','Guest','Visit'),
       ('orangbelajar@proton.com','Guest','Visit'),
       ('imia@proton.com','Guest','Visit'),
       ('imia@proton.com','Guest','Visit');

SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT emails.email, COUNT(emails.email)
FROM    (SELECT DISTINCT email FROM customers
        UNION ALL
        SELECT DISTINCT email FROM guestbooks)
        AS emails
GROUP BY emails.email;