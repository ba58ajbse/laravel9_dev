init:
	docker-compose exec app composer install
	docker-compose exec app npm install
	docker-compose exec app npm run dev
	docker-compose exec app ln -s /var/www/laravel/public /var/www/html/public
	docker-compose exec app chmod 777 -R /var/www/laravel/storage

app_keygen:
	docker-compose exec app php artisan key:generate


cache:
	docker-compose exec app php artisan config:cache
	docker-compose exec app php artisan route:cache

route_list:
	docker-compose exec app php artisan route:list

dev:
	docker-compose exec app npm run dev

watch:
	docker-compose exec app npm run watch

phpunit:
	docker-compose exec app ./vendor/bin/phpunit

phpstan:
	docker-compose exec app ./vendor/bin/phpstan analyse

lint:
	docker-compose exec app npm run lint

fmt:
	docker-compose exec app npm run fmt

stylelint:
	docker-compose exec app npm run stylelint

jest:
	docker-compose exec app npm run test