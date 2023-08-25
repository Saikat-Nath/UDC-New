FROM postgres:latest
ENV POSTGRES_USER=geo_user
ENV POSTGRES_PASSWORD=geo_password
ENV POSTGRES_DB=geo_db
COPY ./databases.sql /docker-entrypoint-initdb.d/
