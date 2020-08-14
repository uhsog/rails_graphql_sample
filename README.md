# rails x graphql

# コマンドとか
```bash
# バックグラウンド（デーモン）起動
$ docker-compose up -d

# 停止
$ docker-compose stop

# 停止 + コンテナ、ネットワークの削除
$ docker-compose down

# 停止状態のコンテナの再起動
$ docker-compose restart

# bundle install とか
# docker-compose run {サービス名} {任意のコマンド}
$ docker-compose run web bundle install --path vendor/bundle

# Dockerfile, docker-compose.ymlの更新反映、gemを追加したときとか
$ docker-compose up --build
```
