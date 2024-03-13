CREATE USER 'arief'@'localhost';
CREATE USER 'hermawan'@'localhost';
CREATE USER 'karditya'@'%';

SELECT User FROM mysql.user;

SET PASSWORD FOR 'arief'@'localhost' = 'rahasia@example12';
SET PASSWORD FOR 'hermawan'@'localhost' = 'rahasia@example12';
SET PASSWORD FOR 'karditya'@'%' = 'rahasia@example12';

DROP USER 'arief'@'localhost';
DROP USER 'hermawan'@'localhost';
DROP USER 'karditya'@'%';