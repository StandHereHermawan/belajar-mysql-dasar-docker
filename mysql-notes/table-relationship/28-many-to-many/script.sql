CREATE TABLE orders
(
    id         INT      NOT NULL AUTO_INCREMENT,
    total      INT      NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE orders;

CREATE TABLE orders_detail
(
    id_product VARCHAR(10) NOT NULL,
    id_order   INT         NOT NULL,
    price      INT         NOT NULL,
    quantity   INT         NOT NULL,
    PRIMARY KEY (id_product, id_order)
) ENGINE = InnoDB;

DESCRIBE orders_detail;

ALTER TABLE orders_detail
    ADD CONSTRAINT fk_orders_detail_product
        FOREIGN KEY (id_product) REFERENCES products (id);

ALTER TABLE orders_detail
    ADD CONSTRAINT fk_orders_detail_order
        FOREIGN KEY (id_order) REFERENCES orders (id);

SHOW CREATE TABLE orders_detail;

SELECT *
FROM orders;

INSERT INTO orders (total)
VALUES (30000),
       (32000),
       (25000);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-001', 1, 30000, 2);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-001', 2, 15000, 1),
       ('P-000-005', 2, 17000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-010', 3, 25000, 1);

INSERT INTO orders (total)
VALUES (15000),
       (34000),
       (75000);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-001', 4, 15000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-004', 5, 17000, 1),
       ('P-000-005', 5, 17000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P-000-006', 6, 25000, 1),
       ('P-000-007', 6, 25000, 1),
       ('P-000-008', 6, 25000, 1);

SELECT *
FROM orders
         JOIN orders_detail ON (orders_detail.id_order = orders.id)
         JOIN products ON (products.id = id_product);

SELECT orders.id,
       products.id,
       products.name,
       orders_detail.quantity,
       orders_detail.price,
       orders.total,
       orders.order_date
FROM orders
         JOIN orders_detail ON (orders_detail.id_order = orders.id)
         JOIN products ON (products.id = id_product);