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