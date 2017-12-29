reset_db:
	docker-compose run --rm web rake db:migrate:reset db:seed --trace
server:
	docker-compose run --rm web rails server
console:
	docker-compose run --rm web rails console
