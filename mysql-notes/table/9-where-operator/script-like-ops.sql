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
WHERE name LIKE '%A';

SELECT *
FROM products
WHERE name NOT LIKE '%A';

SELECT *
FROM products
WHERE products.description LIKE 'A%';

SELECT *
FROM products
WHERE products.description NOT LIKE 'A%';

SELECT *
FROM products
WHERE products.name LIKE '%+ C%';

SELECT *
FROM products
WHERE products.name NOT LIKE '%+ C%';

SELECT *
FROM products
WHERE products.name NOT LIKE '%C%';

INSERT INTO products (id, name, description, category, price, quantity)
VALUES ('Q-000-001', 'Le Minerale', 'Air Minum 500ml', 'Minuman', 3000, 10),
       ('Q-000-002', 'Aqua', 'Air Minum 500ml', 'Minuman', 5000, 20);

INSERT INTO products (id, name, description, category, price, quantity)
VALUES ('P-000-006', 'Mie Ayam Topping A + C', 'Mie Ayam Custom', 'Makanan', 25000, 15),
       ('P-000-007', 'Mie Ayam Topping B + C', 'Mie Ayam Custom', 'Makanan', 25000, 15);

INSERT INTO products (id, name, category, price, quantity)
    VALUE ('P-000-008', 'Mie Ayam Original Ekstra', 'Makanan', 25000, 15);
