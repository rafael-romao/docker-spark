#!/usr/bin/make


start: ## Start the Spark service
	@docker compose -f ./docker/docker-compose.yml up --build -d --remove-orphans

stop: ## Stop the Spark service
	@docker compose -f ./docker/docker-compose.yml stop

restart: stop start ## Restart the Spark service

tty:
	 docker exec -it $(shell docker container ls -q --filter ancestor=docker-spark-master) /bin/bash