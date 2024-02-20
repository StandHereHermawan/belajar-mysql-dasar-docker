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

SELECT COUNT(products.id) AS 'Total Produk',
       category           AS 'Kategori'
FROM products
GROUP BY category;

SELECT MAX(products.price) AS 'Produk Termahal',
       category            AS 'Kategori'
FROM products
GROUP BY category;

SELECT MIN(products.price) AS 'Produk Termurah',
       category            AS 'Kategori'
FROM products
GROUP BY category;

SELECT AVG(products.price) AS 'Harga Produk Rata-Rata',
       category            AS 'Kategori'
FROM products
GROUP BY category;

SELECT SUM(products.quantity) AS 'Total Stok Barang',
       category               AS 'Kategori'
FROM products
GROUP BY category;

--
-- With Having Keyword
SELECT SUM(products.quantity) AS 'Total Stok Barang',
       category               AS 'Kategori'
FROM products
GROUP BY category
HAVING `Total Stok Barang` > 100;

SELECT AVG(products.price) AS 'Harga Produk Rata-Rata',
       category            AS 'Kategori'
FROM products
GROUP BY category
HAVING `Harga Produk Rata-Rata` >= 10000;

SELECT AVG(products.price) AS 'Harga Produk Rata-Rata',
       category            AS 'Kategori'
FROM products
GROUP BY category
HAVING `Harga Produk Rata-Rata` >= 2000
   AND `Harga Produk Rata-Rata` <= 15000;