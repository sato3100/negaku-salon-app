# negaku-salon-app
専修大学 ネットワーク情報学部ネットワーク情報学科
コミュニケーションサロンラボのwebアプリケーション

## 環境構築手順 (cloneあと)

#### 1.環境変数ファイルの作成

```bash
cd backend
touch backend/.env.local
cd ../

cd frontend
touch frontend/.env.local
cd ../
```
先輩チームメンバーに、記述する内容を聞く。


#### 2.イメージ作成,Docker起動

```bash
docker compose build -t negaku-salon .
docker compose up
```
終了は control + cコマンドを入力します。

#### 3.コンテナへのログイン
バックエンド
```bash
docker exec -it backend bash
```
フロントエンド
```bash
docker exec -it frontend bash
```
コンテナからログアウト
```bash
exit
```

#### 4.コンテナのコマンドプロンプトスタイル変更
バックエンドにログイン後
```bash
echo 'export PS1="\[\e[1;33m\]rails:\w \u\[\e[m\]# "' >> ~/.bashrc
source ~/.bashrc
```
フロントエンドにログイン後
```bash
echo 'export PS1="\[\e[1;34m\]rails:\w \u\[\e[m\]# "' >> ~/.bashrc
source ~/.bashrc
```

#### 5.アプリケーションの起動
- フロントエンド (React) はポート http://localhost:3500 でアクセスできます。
- バックエンド (Rails API) はポート http://localhost:8000 でアクセスできます。
- MySQLデータベースはポート 3306 で接続できます。


## その他コマンド
- コンテナの停止
```bash
docker compose down
```
- 不要なキャッシュとボリュームの削除
```bash
docker compose down --volumes --remove-orphans
```