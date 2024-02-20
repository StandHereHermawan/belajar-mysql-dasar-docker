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

SELECT products.id,
       products.name,
       LOWER(products.name) AS 'Lowercase',
       UPPER(products.name) AS 'Uppercase',
       LENGTH(products.name) AS 'String Length'
FROM products;