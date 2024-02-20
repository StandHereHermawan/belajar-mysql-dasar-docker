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

SELECT COUNT(products.id) AS 'Total Produk'
FROM products;

SELECT MAX(products.price) AS 'Produk Termahal'
FROM products;

SELECT MIN(products.price) AS 'Produk Termurah'
FROM products;

SELECT AVG(products.price) AS 'Harga Produk Rata-Rata'
FROM products;

SELECT SUM(products.quantity) AS 'Stok Produk'
FROM products;