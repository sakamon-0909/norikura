# ベースとなるイメージを指定
FROM node:14

# アプリケーションのディレクトリを作成
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールするためのファイルをコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# アプリケーションのソースをコピー
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 8080

# コンテナを実行するコマンドを指定
CMD [ "node", "server.js" ]
