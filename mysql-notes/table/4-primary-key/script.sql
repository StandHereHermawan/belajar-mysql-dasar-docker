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

-- "PRIMARY KEY" was make the selected column as an identifier.
-- selected column that makes it column as a
-- identifier. means make it can't stores same values;
ALTER TABLE products
    ADD PRIMARY KEY (id);

SHOW CREATE TABLE products;
