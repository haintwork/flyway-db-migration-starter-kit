JDBC_URL="jdbc:postgresql://$DB_HOST:$DB_PORT/$DB_NAME"

CONFIG_DIR=`pwd`/config
SQL_DIR=`pwd`/sql

# echo $SQL_DIR
# echo $CONFIG_DIR
# echo JDBC_URL=$JDBC_URL

docker run --rm -v $SQL_DIR:/flyway/sql -v $CONFIG_DIR:/flyway/conf flyway/flyway -url=$JDBC_URL -user=$DB_USER -password=$DB_PASS migrate
