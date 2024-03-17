\
cd /home && \

mkdir "database-dump" && \

mysqldump belajar_mysql_dasar \
--user root \
--password \
--result-file=/home/database-dump/belajar_mysql_dasar.sql
# then move the file into
/var/lib/mysql

# command from home directory (pwd = / ):
mv /home/database-dump/belajar_mysql_dasar.sql /var/lib/mysql
# so the files contained in the archived file when backup using double mounted container.

# password = root@example12