FROM mysql:8.0.29

EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD=password \
    MYSQL_USERMYSQL_USER=user \
    MYSQL_PASSWORD=password \
    MYSQL_DATABASE=dvd_rental

COPY ./mysql_dump.sql ./docker-entrypoint-initdb.d/mysql_dump.sql

RUN chmod +x /docker-entrypoint-initdb.d/mysql_dump.sql
