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
       CASE products.category
           WHEN 'Makanan' THEN 'FOOD'
           WHEN 'Minuman' THEN 'DRINK'
           WHEN 'Lain-Lain' THEN 'ELSE MENU'
           END AS 'English Translate'
FROM products;
-- "CASE" and "WHEN" Keywords.

SELECT products.id                                                           AS 'Identifier',
       products.name                                                         AS 'Nama Produk',
       products.price                                                        AS 'Harga',
       IF(price <= 10000, 'Produk Pendukung',
          IF(name LIKE '%Original%', 'Produk Utama', 'Produk Utama Custom')) AS 'Deskripsi Menu'
FROM products;
-- "IF" statement functions keywords.

SELECT products.id                                             AS 'Identifier',
       products.name                                           AS 'Nama Produk',
       products.price                                          AS 'Harga',
       IF(price <= 10000, 'Murah',
          IF(price BETWEEN 10000 AND 20000, 'Biasa', 'Mahal')) AS 'Opini Publik'
FROM products;

SELECT products.name,
       IFNULL(description, 'Produk Belum Ada Keterangan')
FROM products;