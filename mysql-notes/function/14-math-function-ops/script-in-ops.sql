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
       products.price DIV 1000 AS 'Base in K Value',
       COS(products.price)     AS 'Cos Value',
       SIN(products.price)     AS 'Sin Value',
       TAN(products.price)     AS 'Tan Value'
FROM products;

SELECT products.id,
       products.name,
       products.price          as 'Base Price',
       products.price DIV 1000 as 'K price'
FROM products
WHERE NOT (price DIV 1000 < 10);

SELECT products.id,
       products.name,
       products.price          as 'Base Price',
       products.price DIV 1000 as 'K price'
FROM products
WHERE (price DIV 1000 < 10);

SELECT PI() AS 'PI Value';