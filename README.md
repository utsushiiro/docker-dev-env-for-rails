# Dockerを用いたRails開発環境作成テンプレート

## 1. Gemfileをローカルで用意
```
$ bundle init

# コメントアウトされている gem rails を有効に
$ vim Gemfile 
```

## 2. コンテナをビルドしてRailsアプリケーションを作成
```
docker-compose build

docker-compose run --rm app bundle exec rails new . --force --database=mysql --skip-coffee --skip-turbolinks --skip-test

mv --force database.yml config/database.yml

docker-compose run --rm app rails db:create

docker-compose run --rm app rails db:migrate
```

## 3. docker-composeでコンテナ群を起動
```
docker-compose up
```
