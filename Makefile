SHELL=/bin/bash

all: pull build up

pull:
	@git pull
build:
	@docker-compose build
up:
	@docker-compose up -d --force-recreate
logs:
	@docker-compose logs -f
down:
	@docker-compose down --remove-orphans
