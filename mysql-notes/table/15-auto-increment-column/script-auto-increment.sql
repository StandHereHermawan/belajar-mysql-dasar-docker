CREATE TABLE admin
(
    id         INT          NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE admin;

INSERT INTO admin(first_name, last_name)
VALUES ('Arief', 'Karditya'),
       ('Hilmi', 'Akbar'),
       ('Bangun', 'Paduko');

DELETE
FROM admin
WHERE id = 1;

INSERT INTO admin(first_name, last_name)
VALUES ('Arief', 'Karditya');

SELECT LAST_INSERT_ID() as 'Last Value Auto Increment';