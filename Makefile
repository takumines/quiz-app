#-----------------------------------------------------------
# Docker
#-----------------------------------------------------------

# Wake up docker containers
up:
	docker-compose up -d

# Shut down docker containers
down:
	docker-compose down

# Shut down docker containers and remove db volume
remove-volume:
	docker-compose down -v

# Show a status of each container
status:
	docker-compose ps

# Status alias
s: status

# Show logs of each container
logs:
	docker-compose logs

# Build and up docker containers
build:
	docker-compose up -d --build

# Build containers with no cache option
build-no-cache:
	docker-compose build --no-cache

# Build and up docker containers
rebuild: down build

# Run terminal of the php container
php:
	docker-compose exec php bash

create-project:
	docker-compose exec php composer create-project "laravel/laravel=6.8" .
	docker-compose exec php composer require doctrine/dbal