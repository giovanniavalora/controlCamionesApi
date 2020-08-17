#!/bin/bash

# Descripción: 
# Crea las migraciones desde cero y borra el volumen de la base de datos

cd ..

docker-compose -f docker-compose.prod.yml exec web rm -rf api/migrations
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --fake
docker-compose -f docker-compose.prod.yml exec web python manage.py makemigrations api
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --fake-initial
docker-compose -f docker-compose.prod.yml exec web python manage.py makemigrations
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate

docker-compose -f docker-compose.prod.yml down
docker volume ls
docker volume rm controlcamionesapi_postgres_data
docker volume ls

