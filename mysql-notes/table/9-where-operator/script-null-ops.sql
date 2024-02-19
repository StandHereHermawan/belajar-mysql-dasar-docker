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
WHERE products.description IS NULL;

SELECT *
FROM products
WHERE products.description IS NOT NULL;

INSERT INTO products (id, name, category, price, quantity)
VALUES ('P-000-009', 'Mie Ayam Original Ekstra A', 'Makanan', 27000, 15),
       ('P-000-010', 'Mie Ayam Original Ekstra Pedas', 'Makanan', 25000, 15);
