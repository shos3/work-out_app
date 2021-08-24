## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| age                | string | null: false               |


- has_many :plans
- has_many :tweets

## plans テーブル

| Column             | Type         | Options                        |
| ------------------ | ------       | -----------                    |
| start_time         |    string    | null: false                    |
| event              |    string    | null: false                    |
| kg                 |    string    | null: false                    |
| number             |    string    | null: false                    |
| set                |    string    | null: false                    |
| time               |    string    | null: false                    |
| memo               |    string    | null: false                    |
| user               |  references  | null: false, foreign_key: true |


- belongs_to :user

## tweets テーブル

| Column             | Type         | Options                        |
| ------------------ | ------       | -----------                    |
| text               |    string    | null: false                    |
| user               |  references  | null: false, foreign_key: true |

- belongs_to :user