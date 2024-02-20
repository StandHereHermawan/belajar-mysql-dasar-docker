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

SELECT 10 * 10 AS 'Hasil';
SELECT 10 / 10 AS 'Hasil';
SELECT 10 DIV 10 AS 'Hasil';
SELECT 10 + 10 AS 'Hasil';
SELECT 10 - 10 AS 'Hasil';
SELECT 10 - 10 AS 'Hasil';
SELECT 10 % 10 AS 'Hasil';

SELECT 10, 10, 10 * 10 AS 'Hasil';

SELECT products.id, name, price, price DIV 1000 as 'Price In K'
FROM products;

SELECT products.id,
       products.price DIV 1000 AS 'Base in K Value',
       COS(products.price) AS 'Cos Value',
       SIN(products.price) AS 'Sin Value',
       TAN(products.price) AS 'Tan Value'
FROM products;