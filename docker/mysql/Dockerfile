# Base Image
FROM mysql:8.0.29

# Expose port
EXPOSE 3306

# Setting environments
ENV MYSQL_ROOT_PASSWORD=admin \
    MYSQL_USER=admin \
    MYSQL_PASSWORD=admin \
    MYSQL_DATABASE=dvd_rental

# Copy dump file
COPY ./mysql_dump.sql ./docker-entrypoint-initdb.d/mysql_dump.sql

# RUN chmod +x /docker-entrypoint-initdb.d/mysql_dump.sql
