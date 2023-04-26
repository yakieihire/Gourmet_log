# アプリケーション名

Gourmet Log

# アプリケーション概要

行ったことのあるお店やこれから行ってみたいお店を登録する事で、検索する手間を省く事ができる。

# URL

https://gourmet-log.onrender.com/

# テスト用アカウント

・Basic認証パスワード: 2222
・Basic認証ID: admin
・メールアドレス: i@i
・パスワード: 111111

# 利用方法

## お店の登録

1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う。
2.お店登録ボタンから、お店の内容（お店の画像、お店名、ジャンル、場所、メモ、お店のURL、気になるお店に登録）を入力し登録する。
（お店の画像、お店名、ジャンル）以外は任意、気になるお店に登録する場合は、選択肢からを選択する。

# アプリケーションを制作した背景

アプリケーションを作る際、考えたのは自分が使いたいと思うかどうかだと思いました。今回、作ったアプリケーションはお店に選ぶ際に、どの料理が美味しくてどこの場所にあるなどの記録が欲しいと感じたため作成することにしました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1y2eRAgRQGRO4LaeHNKfe_y2sI1zdAQMjMLIq6XZJXs4/edit#gid=0

# 実装機能
# トップページ

[![Image from Gyazo](https://i.gyazo.com/9fc21cac407552b24c3b2592db2dedda.gif)](https://gyazo.com/9fc21cac407552b24c3b2592db2dedda)

# 1,ユーザー登録機能
ユーザー登録をする事で、お店の登録をする事ができます。（ログインしてない場合は、登録しているお店を見ることはできません。）

[![Image from Gyazo](https://i.gyazo.com/794a4a9d4d72b7ea7a0249abd8679c06.gif)](https://gyazo.com/794a4a9d4d72b7ea7a0249abd8679c06)

# 2,お店登録機能

画像を選択してお店名、ジャンルを入力すると登録する事ができる。（違うアカウントでは、登録したお店は見ることができない。）

[![Image from Gyazo](https://i.gyazo.com/b2ca83a62f6851e646286c2ee3f8c992.gif)](https://gyazo.com/b2ca83a62f6851e646286c2ee3f8c992)

# 3,気になるお店登録機能

気になるお店に登録したい場合は、お店登録画面の一番最後にあるプルダウン（気になるお店に登録）を選択すれば、気になるお店の方に表示される。

[![Image from Gyazo](https://i.gyazo.com/1b0ed383dd754aa192c733e43f2bd0f1.gif)](https://gyazo.com/1b0ed383dd754aa192c733e43f2bd0f1)

# 4,登録したお店の編集機能

登録したお店を編集することができます。（詳細ページからでも編集ページに遷移する事ができます。）

[![Image from Gyazo](https://i.gyazo.com/c7b56f78872663fa04a7be9ea75de935.gif)](https://gyazo.com/c7b56f78872663fa04a7be9ea75de935)

# 5,登録したお店の削除機能
削除ボタンを押すことで登録しているお店を削除する事ができます。（詳細ページからでも削除する事ができます。）

[![Image from Gyazo](https://i.gyazo.com/9877ed6b37b965864c1f93a3f751ab80.gif)](https://gyazo.com/9877ed6b37b965864c1f93a3f751ab80)

# 6,プレビュー機能

どの画像を選択したか表示する事ができます。

[![Image from Gyazo](https://i.gyazo.com/279ad99e271ea0cfb29b07a7e20c3b29.gif)](https://gyazo.com/279ad99e271ea0cfb29b07a7e20c3b29)

# 7,複数画像投稿機能

最大４枚まで画像を投稿する事ができます。

[![Image from Gyazo](https://i.gyazo.com/2936b07cd908b4c7b323e204ab611d80.gif)](https://gyazo.com/2936b07cd908b4c7b323e204ab611d80)

# 8,検索機能

検索したいキーワードを入力するとヒットしたお店だけ表示します。

[![Image from Gyazo](https://i.gyazo.com/a83b53e4dd989c4fac510862e85ac45d.gif)](https://gyazo.com/a83b53e4dd989c4fac510862e85ac45d)

# 実装予定の機能

・詳細画面の画像をスライドショーにしたい。
・URLでリンク先に遷移できるようにしたい。
・検索機能の改善をしたい。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/a28d3acb53fbe8ead339335a9ab421d9.png)](https://gyazo.com/a28d3acb53fbe8ead339335a9ab421d9)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/4ef6851ab89b5203d001c288f332eb2f.png)](https://gyazo.com/4ef6851ab89b5203d001c288f332eb2f)


# 開発環境

・フロントエンド
・バックエンド
・インフラ
・テキストエディタ
・タスク管理

# ローカルでの動作方法

% git clone https://github.com/yakieihire/gourmet_log.git
% cd gourmet_log
% bundle install
% rails db:create
% rails db:migrate
% yarn install

# 工夫したポイント

行った事のあるお店とこれから行って見たいお店を分ける事ができたのはよかったと感じています。

# テーブル設計

## users テーブル

| Column             | Type   | Options                 | 
| ------------------ | ------ | ----------------------- | 
| nickname           | string | null:false              | 
| email              | string | null:false,unique: true | 
| encrypted_password | string | null:false              | 

### Association

- has_many :shops

## shops テーブル

| Column               | Type       | Options                       | 
| -------------------- | ---------- | ----------------------------- | 
| store_name           | string     | null:false                    | 
| category_id          | integer    | null:false                    | 
| menu                 | string     | null:false                    | 
| place                | string     | null:false                    | 
| store_url            | text       | null:false                    | 
| memo                 | text       | null:false                    | 
| interesting_store_id | integer    | null:false                    | 
| user                 | references | null:false, foreign_key: true | 

### Association

- belongs_to :user
