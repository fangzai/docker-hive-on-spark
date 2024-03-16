FROM postgres


RUN export LANGUAGE=en_US.UTF-8

COPY ./postgresql-hms/init/init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
RUN chown postgres:postgres /docker-entrypoint-initdb.d/*
