# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :idioms
- has_many :comments

## idioms テーブル

| Column | Type       | Options                        |
| ------ | ---------  | ------------------------------ |
| title  | string     | null: false                    |
| text   | text       |                                | 
| user   | references | null: false, foreign_key: true |

### Association 

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------  | ------------------------------ |
| text   | text       |                                | 
| user   | references | null: false, foreign_key: true |
| idiom  | references | null: false, foreign_key: true |

### Association 
- belongs_to :user
- belongs_to :idiom