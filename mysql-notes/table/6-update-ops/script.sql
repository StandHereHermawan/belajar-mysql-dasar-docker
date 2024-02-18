CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) Engine = InnoDB;

ALTER TABLE products
    ADD COLUMN category
        ENUM ('Makanan','Minuman','Lain-Lain')
        AFTER name;

UPDATE products
SET category = 'Makanan'
WHERE id = 'P-000-001';
-- "UPDATE" was keyword for change existing value in certain table.
-- "SET" was keyword for change existing value in certain column
    -- that specified by the "WHERE id = 'P-000-001';"

UPDATE products
SET category = 'Makanan',
    price = price + 3000 -- math ops in integer and float values are allowed in set ops.
WHERE id = 'P-000-003';