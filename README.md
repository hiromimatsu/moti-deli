# アプリ名『もちデリ』

## 概要
テイクアウトメニュー情報共有アプリケーション

## 機能一覧
- ユーザー登録、ログイン機能
- マイページにて投稿記事一覧を表示
- 記事投稿機能（編集・削除可能）
- 最寄駅別の記事一覧表示
- 記事検索機能（インクリメンタルサーチ）

## 制作背景
コロナ禍で経営が厳しい飲食店を支援したいと考えました。
テイクアウトメニューを共有するアプリケーションで、
新たにテイクアウトを開始した店舗の情報を拡散するために作成しました。

![motideli-top3](https://user-images.githubusercontent.com/67889926/91924502-d741e880-ed0d-11ea-8082-efec705fc56a.jpg)

## 🌐 App URL

### **https://moti-deli.herokuapp.com**
※初めにテストアカウントでのログインが必要です。
下記よりよろしくお願いいたします。

## テストアカウント
- メールアドレス: test_user@gmail.com
- パスワード: test_user 

## Basic認証
- ユーザー: motideri
- パスワード: moti0123


## 工夫したポイント
「必要な情報をシンプルに。」テイクアウトするのに欲しい情報をすぐに取得できるアプリケーションを作りました。また、直感的に店舗選択をするため画像一覧から選べるようにしております。


## 開発環境
- 言語: Ruby
- ツール: Ruby on Rails
- DB: mySQL
- サーバー: heroku


# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :articles

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|restaurant|string|null: false|
|image|string|null: false|
|menu|text|null: false|
|rule|text|null :false|
|area_id|integer|null: false|
|user_id|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to_active_hash :area