FROM mysql:latest as builder

RUN ["sed", "-i", "s/exec \"$@\"/echo \"not running $@\"/", "/usr/local/bin/docker-entrypoint.sh"]

ENV MYSQL_ROOT_PASSWORD=password

# ENV MYSQL_ALLOW_EMPTY_PASSWORD=true

COPY file_upload_db_schema.sql /docker-entrypoint-initdb.d/

RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir", "/initialized-db"]

FROM mysql:latest

RUN apt-get update

RUN apt-get -y install iputils-ping

COPY --from=builder /initialized-db /var/lib/mysql

EXPOSE 3306
