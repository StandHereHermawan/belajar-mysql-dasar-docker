CREATE USER 'arief'@'localhost';
CREATE USER 'hermawan'@'localhost';
CREATE USER 'karditya'@'%';

SELECT User FROM mysql.user;

GRANT SELECT ON belajar_mysql_dasar.* TO 'arief'@'localhost';

GRANT SELECT ON belajar_mysql_dasar.* TO 'hermawan'@'localhost';
GRANT INSERT, UPDATE, DELETE ON belajar_mysql_dasar.* TO 'hermawan'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON belajar_mysql_dasar.* TO 'karditya'@'%';

REVOKE SELECT, INSERT, UPDATE, DELETE ON belajar_mysql_dasar.* FROM 'karditya'@'%';

REVOKE SELECT, INSERT, UPDATE, DELETE ON test.* FROM 'ariefkarditya'@'%';

SHOW GRANTS FOR 'arief'@'localhost';
SHOW GRANTS FOR 'hermawan'@'localhost';
SHOW GRANTS FOR 'karditya'@'%';
SHOW GRANTS FOR 'ariefkarditya'@'%';