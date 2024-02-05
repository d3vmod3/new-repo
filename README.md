# docker-laravel

docker-laravel setup
Step 1: Run the following command.
docker run --rm -v $(pwd):/app composer create-project --prefer-dist laravel/laravel /app/src
docker-compose up --build docker_laravel_app

Step 2: Install dependencies
docker-compose run --rm composer install

Step 3:
Setup Login and Register Feature
docker-compose run --rm composer require laravel/ui
docker-compose run --rm artisan ui bootstrap --auth
docker-compose run --rm composer artisan migrate:fresh
