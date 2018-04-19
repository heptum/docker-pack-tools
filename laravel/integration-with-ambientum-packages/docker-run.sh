#!/bin/bash

echo Down Application container
docker-compose down

echo Uploading Application container 
docker-compose up -d

echo Install dependencies
docker exec -it laravelProject-app composer install

echo Copying the configuration example file
docker exec -it laravelProject-app cp .env.example .env

echo Generate key
docker exec -it laravelProject-app php artisan key:generate

echo Make migrations
docker exec -it laravelProject-app php artisan migrate

echo Make seeds
docker exec -it laravelProject-app php artisan db:seed

echo Information of new containers
docker ps
