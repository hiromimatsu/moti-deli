# タイトル『もちデリ』

## 概要
テイクアウトメニュー情報共有アプリケーション

## 企画背景
コロナ禍で経営が厳しい飲食店を支援したいと考えました。
テイクアウトメニューを共有するアプリケーションで、
新たにテイクアウトを開始した店舗の情報を拡散するために作成しました。


![motideli-top](https://user-images.githubusercontent.com/67889926/91436460-210c7800-e8a3-11ea-97e8-fd90cffebeb1.jpg)

## 🌐 App URL

### **https://moti-deli.herokuapp.com**

## 機能一覧
・ユーザー登録、ログイン機能
・記事投稿機能
・多階層カテゴリー（ancestry）
・記事検索機能

## Basic認証
ユーザー: motideri
パスワード: moti0123

## 開発環境
言語: Ruby
ツール: Ruby on Rails
DB: mySQL
サーバー: heroku


# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :areas, through: :areas_users
- has_many :areas_users
_ has_many :articles

## areasテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
### Association
- has_many :users, through: areas_users
- has_many :areas_users
- has_many :articles

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|restaurant|string|null: false|
|image|string¥¥|null: false|
|instagram|string|null: false|
|menu|text|null: false|
|rule|text|null :false|
|area_id|integer|null: false,foreign_key: true|
|user_id|integer|null: false,foreign_key: true|
### Association
- belongs_to :area
- belongs_to :user

## areas_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key: true|
|group_id|integer|null: false,foreign_key: true|
### Association
- belongs_to :area
- belongs_to :user