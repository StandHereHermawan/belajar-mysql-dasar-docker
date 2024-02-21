CREATE TABLE sellers
(
    id          INT          NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(32)  NOT NULL,
    middle_name VARCHAR(32),
    last_name   VARCHAR(32),
    email       VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email),
    INDEX first_name_index (first_name),
    INDEX middle_name_index (middle_name),
    INDEX last_name_index (last_name),
    INDEX full_name_index (first_name, middle_name, last_name)
) ENGINE = InnoDB;

DESCRIBE sellers;

SHOW CREATE TABLE sellers;

-- Remove existing Table, Index Column Commands:
ALTER TABLE sellers
    DROP INDEX first_name_index;

-- Add existing Table with Index Column Commands:
ALTER TABLE sellers
    ADD INDEX first_name_index (first_name);
