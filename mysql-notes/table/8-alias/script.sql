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

SELECT id       AS 'kode',
       name     AS 'nama',
       category AS 'kategori',
       price    AS 'harga',
       quantity AS 'stok'
FROM products;
-- "AS" was keyword for reference one name for selected column as showed above where
-- 'id'         column  AS 'kode',
-- 'name'       column  AS 'nama',
-- 'category'   column  AS 'category',
-- 'price'      column  AS 'harga',
-- 'quantity'   column  AS 'stok',

SELECT p.id       AS 'kode',
       p.name     AS 'nama',
       p.category AS 'kategori',
       p.price    AS 'harga',
       p.quantity AS 'stok'
FROM products AS p;
-- "AS" also keyword for reference one name for selected table as showed above.