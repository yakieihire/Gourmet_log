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
