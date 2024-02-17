# Inspect MySQL Container before change the tags
# Command:
docker container create \
--name mysql-db-test \
--env MYSQL_ROOT_PASSWORD=12032003 \
mysql:latest

# Change the MySQL image tags command:
docker tag mysql:latest mysql:8.2.0-1.el8

# Masuk Ke Container Mysql
docker container exec -i -t db-mysql /bin/bash

# Masuk Ke database MySQL
mysql -h localhost -u ariefkarditya -p
# Password sesuai file docker compose

