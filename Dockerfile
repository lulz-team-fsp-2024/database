FROM postgres:13.14-alpine3.19

EXPOSE 5432

COPY public.sql /docker-entrypoint-initdb.d/