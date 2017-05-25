SHELL=/bin/bash -e

.PHONY: pull validate build up logs down purge

all: pull validate build up

pull:
	@git pull --ff
validate:
	@docker-compose config --quiet
build:
	@docker-compose build
up:
	@docker-compose up -d --force-recreate
logs:
	@docker-compose logs --follow
down:
	@docker-compose down
purge:
	@docker-compose down --volumes
