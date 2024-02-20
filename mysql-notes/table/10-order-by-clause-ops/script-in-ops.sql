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
ORDER BY price ASC;
-- "Order By" was keyword for arrange values.
-- Default order is ascending. so the "ASC" keyword is unnecessary here.

SELECT *
FROM products
ORDER BY price DESC;
-- "Order By" was keyword for arrange values.
-- "DESC" was keyword after "ORDER" for arranging values descending.

SELECT *
FROM products
ORDER BY price DESC, id ASC;
-- Arrange Multiple Columns.

SELECT *
FROM products
ORDER BY price ASC, id DESC;
-- Arrange Multiple Columns.

SELECT *
FROM products
ORDER BY category, price DESC;
-- Arrange Multiple Columns.

SELECT *
FROM products
ORDER BY category DESC , price;
-- Arrange Multiple Columns.

INSERT INTO products(id, name, description, price, quantity, category)
VALUES ('R-000-001', 'Kerupuk 1', 'Kerupuk Kembang Putih', 2000, 20, 'Lain-Lain'),
       ('R-000-002', 'Kerupuk 2', 'Kerupuk Kulit', 2000, 20, 'Lain-Lain'),
       ('R-000-003', 'Kerupuk 3', 'Kerupuk Udang', 3000, 20, 'Lain-Lain');