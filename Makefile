start:
	docker-compose up
create_db:
	docker-compose run --rm web bundle exec rake db:create
migrate_db:
	docker-compose run --rm web bundle exec rake db:migrate:reset
test:
	docker-compose run --rm web bundle exec rails test
down:
	docker-compose down --remove-orphans
