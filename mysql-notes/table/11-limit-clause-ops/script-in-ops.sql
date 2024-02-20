CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    category    ENUM ('Makanan', 'Minuman','Lain-Lain'),
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) Engine = InnoDB;

SELECT *
FROM products
WHERE price < 17000
ORDER BY price DESC
LIMIT 5;
-- "LIMIT" was keyword for limit the values retrieve from the selected column.
-- "LIMIT 5" means only 5 data who match retrieved.

SELECT *
FROM products
WHERE price < 17000
ORDER BY price DESC
LIMIT 6;
-- "LIMIT" was keyword for limit the values retrieve from the selected column.
-- "LIMIT 6" means only 5 data who match retrieved.

SELECT *
FROM products
WHERE price < 17000
ORDER BY price DESC
LIMIT 3, 6;
-- "LIMIT 3,6" means 3 first value skipped then 6 values who match retrieved.

SELECT *
FROM products
WHERE price < 17000
ORDER BY price DESC
LIMIT 2, 4;
-- "LIMIT 2,4" means 2 first value skipped then 4 values who match retrieved.