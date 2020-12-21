.PHONY: up
## up: build & run
up:
	docker-compose up -d --build
	@make install
	@make run-watch

.PHONY: stop
## build: stop the application
stop:
	docker-compose down

.PHONY: install
## install: install packages
install:
	docker-compose exec node npm install

.PHONY: run-watch
## run-watch: npm run watch
run-watch:
	docker-compose exec node npm run watch