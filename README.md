# AWS クライアント　コンテナ

Dockerコンテナ自体は、以下の記事を参考にさせていただきました。

[AWS CLIをDocker環境で実行する](https://qiita.com/ABCompany1/items/c92ac5087519c103f056)

こちらのコンテナを参考にさせていただいて、
「docker-compose.yml」と環境ファイルの「.env」を記載しています。

# 使い方

「.env.sample」を「.env」にコピーします。
```bash
cp .env.sample .env
```
ファイル内のAWS_関係の設定値を書き換えます。
```dotenv
AWS_ACCESS_KEY_ID="<your aws access key id>"
AWS_SECRET_ACCESS_KEY="<your aws access key>"
AWS_DEFAULT_REGION="<aws default region>"

TZ=Asia/Tokyo

```

```bash
docker-compose build
docker-compose up -d
docker-compose exec aws /bin/bash
```

shareディレクトリをコンテナ内の[/data]ディレクトリにマウントしていますので、ファイル共有にお使いください。


