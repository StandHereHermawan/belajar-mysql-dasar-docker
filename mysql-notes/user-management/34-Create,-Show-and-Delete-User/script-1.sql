CREATE USER 'arief'@'localhost';
CREATE USER 'hermawan'@'localhost';
CREATE USER 'karditya'@'%';

SELECT User FROM mysql.user;

DROP USER 'arief'@'localhost';
DROP USER 'hermawan'@'localhost';
DROP USER 'karditya'@'%';