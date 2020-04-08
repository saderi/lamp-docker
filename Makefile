default:
	${MAKE} build
	${MAKE} up

build:
	docker-compose build

build-nginx:
	docker-compose build nginx

build-php:
	docker-compose build php

up:
	docker-compose -p lamp -f docker-compose.yml up -d

down:
	docker-compose -p lamp down

phpmyadmin:
	docker-compose -p lamp -f docker-compose.yaml -f docker-compose.phpmyadmin.yaml up -d
