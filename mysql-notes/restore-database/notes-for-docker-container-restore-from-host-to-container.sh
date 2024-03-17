# docker cp <host_source_path> <container_name_or_id>:<destination_path>

docker cp \
/home/arief-karditya/Project-Belajar-In-Linux/Project/database/belajar-mysql-docker/mysql-notes/restore-database/36-mysql-restore-file/mysql-backup.sql \
test-restore-mysql:/home/database-restore
# copy .sql backup file from system host to another mysql container destination for restore purposes.