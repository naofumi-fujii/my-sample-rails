start:
	docker-compose up
create_db:
	docker-compose run --rm web bundle exec rake db:create
migrate_db:
	docker-compose run --rm web bundle exec rake db:migrate:reset
