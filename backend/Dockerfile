# ベースイメージ
FROM --platform=linux/amd64 ruby:3.2.2

# パッケージインストール
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client

# 作業ディレクトリを変更
WORKDIR /app

# Gemfileのコピーとbundle install
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem install bundler
RUN bundle install

# アプリケーションのソースコードをコピー
COPY . /app

# エントリーポイントスクリプトの設定
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# ポートの公開
EXPOSE 3002

# Railsサーバーを起動するコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
