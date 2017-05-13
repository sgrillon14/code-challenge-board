FROM postgres:9

ENV POSTGRES_USER battleuser
ENV POSTGRES_PASSWORD battledb123
ENV POSTGRES_DB battledb

WORKDIR /battle-initdb
ADD *.psql /battle-initdb/
ADD *.txt /battle-initdb/
RUN chown postgres: /battle-initdb/*

ADD load.sh /docker-entrypoint-initdb.d/
