SHELL=/bin/bash

deploy:
	@git pull
	@docker-compose build
	@docker-compose up -d --force-recreate
