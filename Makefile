SHELL=/bin/bash -e

.PHONY: pull validate build up logs down purge

all: validate build up

pull:
	@git pull --ff
validate:
	@docker-compose config --quiet
build:
	@docker-compose build
up:
	@docker-compose up -d --remove-orphans
logs:
	@docker-compose logs --follow
down:
	@docker-compose down
purge:
	@docker-compose down --rmi local --remove-orphans --volumes
cleanup:
	@docker rm $$(docker ps -aq); docker rmi $$(docker images -f "dangling=true" -q)
