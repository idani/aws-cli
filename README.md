# AWS クライアント　コンテナ

Dockerコンテナ自体は、以下の記事を参考にさせていただきました。

[AWS CLIをDocker環境で実行する](https://qiita.com/ABCompany1/items/c92ac5087519c103f056)

こちらのコンテナを参考にさせていただいて、
「docker-compose.yml」と環境ファイルの「.env」を記載しています。

docker-compose build
docker-compose up -d
docker-compose exec aws /bin/bash

としてご利用ください。

