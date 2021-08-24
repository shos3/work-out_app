## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| age                | string | null: false               |


- has_many :plans


## plans テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| date               | string | null: false               |
| event              | string | null: false               |
| number             | string | null: false               |
| set                | string | null: false               |
| time               | string | null: false               |

- belongs_to :user