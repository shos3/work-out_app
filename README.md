アプリケーション名:
筋トレ記録

アプリケーション概要:
このアプリケーションでは、自分自身のトレーニング記録や他のユーザーとのやトークができたりできます。自分のトレーニング記録をカレンダーに反映させれる様になっている為、今までの記録を見返すことができます。また年間、月間トレーニング種目数をカウントできる仕様となっている為、自分のモチベーション維持にも繋がり、『継続してトレーニングをやろう』と思うことができるようにしました。他のユーザーと共有スペースで投稿できたりするので他のユーザーのトレーニングを取り入れたりもするとこができるように作成しました。


URL:
https://work-outs.herokuapp.com/


テスト用アカウント:
① ID: apple@apple  PASSWORD:a1a1a1
② ID: test@test    PASSWORD:a1a1a1 

利用方法:
①新規登録、ログインをしてください。新規登録の際は、ユーザーの写真を任意で入れることができます。(入れなくてもでデフォルトでアイコンが表示されます。）

『トレーニング記録』
②画面上のトレーニング記録への所からトレーニング記録を入力してください。(メモ欄は必須ではありません)

③画面のカレンダー上にデータが入ります。そのデータを押して頂きますと詳細がご覧になることができます。
『トレーニング共有一覧』
④画面上のトレーニング共有一覧への所から共有一覧ページに遷移でき、他のユーザーとのトレーニング共有スペースとなります。投稿したい内容を投稿ページより投稿することができます。

⑥共有一覧ページでは、自分や他のユーザー投稿にハートをつけることることができたり、コメントとすることができます。

⑦投稿したユーザーの名前を押して頂きますとそのユーザーの情報、投稿した内容が表示されます。

⑧ユーザーのアイコン、ユーザー名を変更する際は、MyMyCalenderページのユーザー名を押して頂きます変更することができます。


目指した課題解決：：
このアプリケーションを通じて、私自身もジムに通っている為このようなとこができたらいいと思ったことと、トレーニングする人の記録を管理できたりトレーニングする人同士の共有ができたらいいと考えました。また、トレーニングしたくても継続ができない人にとってもカレンダーに反映されるのと年間と月別のトレーニング数も出る為、モチベーションが上がるように作成しました。

洗い出した要件:

	スプレッドシートにまとめた要件定義を記述。
実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。
実装予定の機能:

	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。
データベース設計:

	
ローカルでの動作方法:

	git clo




## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | -----------               |
| nickname           | string  | null: false, unique: true |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| age                | string  | null: false               |
| gender             | integer | null: false               |

- has_many :plans
- has_many :tweets
- has_many :likes
- has_many :messages


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
- has_many :likes
- has_many :messages

## likes テーブル

| Column              | Type    | Options                        |
| ------------------  | ------  | -----------                    |
| user                | integer | null: false, foreign_key: true |
| tweet               | integer | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :tweet



## messages テーブル

| Column              | Type    | Options                        |
| ------------------  | ------  | -----------                    |
| content             | text    | null: false                    |
| user                | integer | null: false, foreign_key: true |
| tweet               | integer | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :tweet
