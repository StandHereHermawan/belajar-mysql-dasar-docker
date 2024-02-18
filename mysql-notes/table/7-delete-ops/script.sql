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

INSERT INTO products(id, name, description, price, quantity)                -- Column Table Array.
VALUES ('P-000-009', 'Mie Ayam Original', 'Mie Ayam Original', 15000, 20);  -- Values Array.

DELETE
FROM products
WHERE id = 'P-000-009';
-- "DELETE" was keyword for delete existing value
-- in certain rows that can be specified by Where Clause.