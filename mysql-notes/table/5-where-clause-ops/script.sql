CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) Engine = InnoDB;

SELECT products.name, price, quantity, created_at
FROM products
WHERE quantity = 15;
-- "WHERE" was keyword for specifying information from columns to be retrieved.
-- "quantity" was example of available table column
-- to get information inside it that match retrieved.
-- "quantity = 15" was example of specifying the information to get retrieved.

SELECT products.name, price,description, quantity, created_at
FROM products
WHERE price = 17000;