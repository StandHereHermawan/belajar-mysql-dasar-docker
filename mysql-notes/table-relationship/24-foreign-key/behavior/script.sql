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
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE SET NULL ON UPDATE SET NULL;

DELETE
FROM products
WHERE id = 'P-000-001';
-- Testing Ops

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P-000-001', 'Mie Ayam Original', 'Mie Ayam Original', 15000, 20);
-- Testing Ops

INSERT INTO wishlist (id_product, description)
VALUES ('P-000-001', 'Makanan Titipan Arief');
-- Testing Ops

