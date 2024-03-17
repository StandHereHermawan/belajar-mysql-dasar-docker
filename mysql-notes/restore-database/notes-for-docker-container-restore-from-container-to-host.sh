docker cp <container_id_or_name>:/path/to/sql/file.sql /path/on/host/

docker cp \
db-mysql:/home/database-dump/mysql-backup.sql \
/home/arief-karditya/Project-Belajar-In-Linux/Project/database/belajar-mysql-docker/mysql-notes/restore-database/36-restore-file
# Copy .sql backup file from mysqldump container source to system host