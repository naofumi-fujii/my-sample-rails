up:
	docker-compose up
build:
	docker-compose build
create_db:
	docker-compose run --rm web bundle exec rake db:create
migrate_db:
	docker-compose run --rm web bundle exec rake db:migrate
test:
	docker-compose run --rm web bundle exec rails test
down:
	docker-compose down
