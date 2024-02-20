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

SELECT products.id                             AS 'Identifier',
       products.name                           AS 'Nama Produk',
       products.created_at                     AS 'Tanggal Lengkap',
       EXTRACT(YEAR FROM products.created_at)  AS 'Tahun Input',
       EXTRACT(MONTH FROM products.created_at) AS 'Bulan Input',
       EXTRACT(DAY FROM products.created_at)   AS 'Dalam Bulan Hari Ke',
       EXTRACT(WEEK FROM products.created_at)  AS 'Dalam Tahun Minggu Ke',
FROM products;