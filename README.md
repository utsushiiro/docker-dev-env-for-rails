# Dockerを用いたRails開発環境作成テンプレート

## 1. Gemfileをローカルで用意
```
$ bundle init

# コメントアウトされている gem rails を有効に
$ vim Gemfile 
```

## 2. init.shを実行
init.sh は以下の処理を順番に実行する
1. コンテナを作成
2. Railsアプリケーション作成
3. database.ymlの差し替え
4. アプリケーション用のDB作成
```
./init.sh
```

## 3. docker-composeでコンテナ群を起動
```
docker-compose up
```
