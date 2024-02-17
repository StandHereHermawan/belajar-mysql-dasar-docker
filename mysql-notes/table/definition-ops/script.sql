-- Command list available Databases Engine:
show engines;

-- Before you can perform operations table,
-- database must created and selected.

-- Command list available Table in databases:
show tables;

-- Command create table in databases:
create table barang
(
    kode   INT,
    nama   VARCHAR(100),
    harga  INT,
    jumlah INT
) ENGINE = InnoDB;

-- Command describe the table:
describe nama_table;

-- Command describe the table syntax structure:
show create table barang;

-- Command to modify table by adding column:
ALTER TABLE barang
    ADD COLUMN description TEXT;

-- Command to modify table by renaming column:
ALTER TABLE barang
    RENAME COLUMN description to barang_desc;

-- Command to modify table by removing column:
ALTER TABLE barang
    DROP COLUMN barang_desc;

-- Command to modify table by
-- moves selected column after
-- another selected column:
ALTER TABLE barang
    MODIFY kode INT after jumlah;

-- Command to modify table by
-- makes the selected column
-- on the first left from other column:
ALTER TABLE barang
    MODIFY kode INT FIRST;

-- Command to modify table by
-- makes the selected column default value not null:
ALTER TABLE barang
    MODIFY nama VARCHAR(100) NOT NULL,
    MODIFY kode INT NOT NULL;

-- Command to modify table by
-- makes the selected column
-- default value not null
-- and has default value:
ALTER TABLE barang
    MODIFY jumlah INT NOT NULL DEFAULT 0,
    MODIFY harga INT NOT NULL DEFAULT 0,
    ADD created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- Hardcode some data to specific selected table:
INSERT INTO barang (kode, nama) VALUES (1,'MySQL');

-- Show some data from selected table:
select * from barang;

-- Command to Reset the Table Value:
TRUNCATE TABLE barang;

-- Command to delete the table from databases:
DROP TABLE barang;