docker-compose build

docker-compose run --rm app bundle exec rails new . --force --database=mysql --skip-coffee --skip-turbolinks --skip-test

mv --force database.yml config/database.yml

docker-compose run --rm app bin/rails db:create

docker-compose run --rm app bin/rails db:migrate