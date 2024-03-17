# masuk dulu ke mysql client
mysql -h localhost -u root -p
# password is 12032003
create database belajar_mysql_backup_import;
# exit mysql

mysql \
--user=root \
--password \
belajar_mysql_backup_import \
< /home/database-dump/belajar_mysql_dasar.sql
# Directory inside db-mysql container

mysql -h localhost -u root -p
# password is root@example12