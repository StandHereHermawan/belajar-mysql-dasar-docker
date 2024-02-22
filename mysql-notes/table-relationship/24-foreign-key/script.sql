CREATE TABLE wishlist
(
    id          INT         NOT NULL AUTO_INCREMENT,
    id_product  VARCHAR(10) NOT NULL,
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product) REFERENCES products (id)
) ENGINE = InnoDB;

SHOW CREATE TABLE wishlist;

ALTER TABLE wishlist
    DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id);

INSERT INTO wishlist (id_product, description)
VALUES ('P-000-001', 'Makanan Titipan Arief'),
       ('P-000-004', 'Makanan Titipan Hilmi'),
       ('P-000-006', 'Makanan Titipan Hanafi');

INSERT INTO wishlist (id_product, description)
VALUES ('Salah', 'Ups');
-- Testing Failed Ops

DELETE
FROM products
WHERE id = 'P-000-001';