docker container create \
--name backup-purposes \
--mount "type=bind,source=/home/arief-karditya/Project-Belajar-In-Linux/Project/database/belajar-mysql-docker/mysql-notes/backup-database/35-backup-file,destination=/database-backup" \
--mount "type=volume,source=db-mysql,destination=/database-dump" \
nginx:1.25.3 && \

docker container start backup-purposes && \

docker container exec -i -t backup-purposes /bin/bash && \

tar cvf /database-backup/belajar_mysql_dasar.tar.gz /database-dump/belajar_mysql_dasar.sql

docker container rm backup-purposes