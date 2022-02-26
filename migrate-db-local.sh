DB_HOST=localhost
DB_PORT=5432
# DB_PORT=3306
DB_NAME=
JDBC_URL="jdbc:postgresql://$DB_HOST:$DB_PORT/$DB_NAME"
# JDBC_URL="jdbc:mysql://$DB_HOST:$DB_PORT/$DB_NAME"
DB_USER=
DB_PASSWORD=

CONFIG_DIR=`pwd`/config
SQL_DIR=`pwd`/sql

# echo $SQL_DIR
# echo $CONFIG_DIR

# flyway repair -url=${JDBC_URL} -user=${DB_USER} -password=${DB_PASSWORD} -configFiles="${CONFIG_DIR}/flyway.conf" -locations="filesystem:${SQL_DIR}/" -outputType=json

flyway migrate -url=${JDBC_URL} -user=${DB_USER} -password=${DB_PASSWORD} -configFiles="${CONFIG_DIR}/flyway.conf" -locations="filesystem:${SQL_DIR}/" -outputType=json

# flyway baseline -url=${JDBC_URL} -user=${DB_USER} -password=${DB_PASSWORD} -configFiles="${CONFIG_DIR}/flyway.conf" -locations="filesystem:${SQL_DIR}/" -outputType=json
