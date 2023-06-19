install:
	docker-compose exec app yarn install

watch:
	docker-compose exec app yarn watch

build:
	docker-compose exec app yarn build