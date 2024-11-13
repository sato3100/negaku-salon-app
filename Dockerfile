# ベースイメージ
FROM ruby:3.1.6-bullseye

# 環境変数設定
ENV LANG="C.UTF-8" \
    TZ="Asia/Tokyo" \
    RAILS_VERSION="7.0.4" \
    RAILS_ENV="development"

# Railsのインストール
RUN gem install rails --version "$RAILS_VERSION" -N
RUN gem update bundler

# Gitの初期設定
RUN git config --global init.defaultBranch main

# 作業ディレクトリを変更
WORKDIR /negaku-salon

# ポート3500を公開
EXPOSE 3500
