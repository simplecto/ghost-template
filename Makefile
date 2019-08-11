
###############################################################################
# HELP / DEFAULT COMMAND
###############################################################################
.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)


.PHONY: build
build:

	#todo: build zip file into build folder

.PHONY: start-dev
start-dev: ## Start the ghost development server using docker

	docker-compose up -d

.PHONY: stop-dev
stop-dev: ## Stop the ghost development server

	docker-compose down