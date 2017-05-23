SHELL=/bin/bash -e

all: validate pull build up

pull:
	@git pull
validate:
	@docker-compose config -q
build:
	@docker-compose build
up:
	@docker-compose up -d --force-recreate
logs:
	@docker-compose logs -f
down:
	@docker-compose down --remove-orphans
