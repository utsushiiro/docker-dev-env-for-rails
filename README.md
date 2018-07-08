# Dockerを用いたRails開発環境作成テンプレート

## 1. Gemfileをローカルで用意
```
$ bundle init 
```

## 2. コンテナをビルドしてRailsアプリケーションを作成
```
docker-compose build

docker-compose run -rm app bundle exec rails new . --database=mysql --skip-turbolinks --skip-git --skip-test
```

## 3. docker-composeでコンテナ群を起動
```
docker-compose up
```
