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

SELECT DISTINCT customers.email FROM customers
LEFT JOIN guestbooks ON (customers.email = guestbooks.email)
WHERE guestbooks.email IS NULL;