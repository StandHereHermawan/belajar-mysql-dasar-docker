CREATE TABLE customers
(
    id         INT          NOT NULL AUTO_INCREMENT,
    email      VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

DESCRIBE customers;

ALTER TABLE customers
    DROP CONSTRAINT email_unique;

ALTER TABLE customers
    ADD CONSTRAINT email_unique UNIQUE (email);

INSERT INTO customers(email, first_name, last_name)
VALUES ('imia@proton.com', 'Hilmi', 'Akbar'),
       ('iimia@proton.com', 'Hilmi', 'Akbar');

SELECT *
FROM customers;

