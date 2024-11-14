# ベースイメージ
FROM --platform=linux/amd64 node:21.5.0

# 作業ディレクトリを変更
WORKDIR /app

# パッケージインストール
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# アプリケーションのコードをコピー
COPY . .

# Reactのビルド
RUN yarn build
RUN yarn global add serve

# ポートの公開
EXPOSE 3000

# Reactを起動するコマンド
CMD sh -c 'serve -s build -l tcp://0.0.0.0:8000'