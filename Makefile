#!/usr/bin/make


start: ## Start the Spark service
	@docker compose -f ./docker/docker-compose.yml up --build -d

stop: ## Stop the Spark service
	@docker compose -f ./docker/docker-compose.yml stop
