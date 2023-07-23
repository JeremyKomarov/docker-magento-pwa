install:
	docker-compose exec app yarn install

watch:
	docker-compose exec app yarn watch

build:
	docker-compose exec app yarn build

upgrade:
	docker-compose exec app yarn upgrade

remove-sample:
	docker-compose exec app yarn remove @magento/venia-sample-backends
