CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
) Engine = InnoDB;

SHOW TABLES;

-- Insert Multiple Data
-- Value inside Values Array must be aligned with Column Table Array.
-- Example:
INSERT INTO products(id, name, description, price, quantity)                -- Column Table Array.
VALUES ('P-000-001', 'Mie Ayam Original', 'Mie Ayam Original', 15000, 20);  -- Values Array.

DESCRIBE products;

-- Insert Multiple Data
-- Value inside Values Array must be aligned with Column Table Array.
-- Example:
INSERT INTO products(id, name, description, price, quantity)
VALUES ('P-000-002', 'Mie Ayam Topping A', 'Mie Ayam Custom', 17000, 15),   -- Column Table Array.
       ('P-000-003', 'Mie Ayam Topping B', 'Mie Ayam Custom', 17000, 15),   -- Values Array.
       ('P-000-004', 'Mie Ayam Topping C', 'Mie Ayam Custom', 17000, 15),   -- Values Array.
       ('P-000-005', 'Mie Ayam Topping D', 'Mie Ayam Custom', 17000, 15);   -- Values Array.

SELECT * FROM products;