> ## アプリケーション名
とれメモ

>## アプリケーション概要
このアプリケーションでは、自分自身のトレーニング記録や他のユーザーとのやトークができたりできます。自分のトレーニング記録をカレンダーに反映させれる様になっている為、今までの記録を見返すことができます。また年間、月間トレーニング種目数をカウントできる仕様となっている為、自分のモチベーション維持にも繋がり、『継続してトレーニングをやろう』と思うことができるようにしました。他のユーザーと共有スペースで投稿できたりするので他のユーザーのトレーニングを取り入れたりもするとこができるように作成しました。


>## URL
https://work-outs.herokuapp.com/


>## テスト用アカウント
 ① メールアドレス: apple@apple  
    パスワード : a1a1a1  

 ② メールアドレス: test@test  
    パスワード : a1a1a1  

>## 利用方法
1. 新規登録、ログインをしてください。新規登録の際は、ユーザーの写真を任意で入れることができます。(入れなくてもでデフォルトでアイコンが表示されます。）

『トレーニング記録』

2. 画面上のトレーニング記録への所からトレーニング記録を入力してください。(メモ欄以外は入力必須です)

3. 画面のカレンダー上にデータが入ります。そのデータを押して頂きますと詳細がご覧になることができます。

『トレーニング共有一覧』

4. 画面上のトレーニング共有一覧への所から共有一覧ページに遷移でき、他のユーザーとのトレーニング共有スペースとなります。投稿したい内容を投稿ページより投稿することができます。

5. 共有一覧ページでは、自分や他のユーザー投稿にハートをつけることることができたり、コメントとすることができます。

6. 投稿したユーザーの名前を押して頂きますとそのユーザーの情報、投稿した内容が表示されます。

7. ユーザーのアイコン、ユーザー名を変更する際は、MyCalenderページのユーザー名を押して頂きます変更することができます。


>## 目指した課題解決
このアプリケーションを通じて、私自身もジムに通っている為このようなとこができたらいいと思ったことと、トレーニングする人の記録を管理できたりトレーニングする人同士の共有ができたらいいと考えました。また、トレーニングしたくても継続ができない人にとってもカレンダーに反映されるのと年間と月別のトレーニング数も出る為、モチベーションが上がるように作成しました。

>## 洗い出した要件定義
| 優先順位  (高:3 中:2 低:1) | 機能    | 目的    | 詳細    | ストーリー(ユースケース)    | 見積もり (所要時間)    |
|-----------------------------|-----|------|-----|----------------------|--------------------|
| ３ | 新規登録機能        | ユーザー登録をできるように | 必要事項を入力して登録 | ニックネーム、メールアドレス、パスワード、確認パスワード、年齢、性別の全てをを入力しないと登録できない。また写真は任意。入れなくてもデフォルトで入る。後入れ可能。 | 5 | 
| ３ | ログイン、ログアウト  | ログイン、ログアウトをできるように | ボタンひとつでログアウトできたり、ログインはID、パスワードでログイン | ログインはメールアドレス、パスワードが抜けているとログインできない。 | 5  |
| ３ | トレーニング記録     | 日々の自分のトレーニングを記録していく為。 | 必要事項を入力して登録 | トレーニング記録へのボタンを押して頂き、遷移先のページでトレーニングした日付、時間、トレーニング内容、重量、回数、セット数、時間を入力しないと登録できない。メモ欄は任意。 | 8 | 
| ３ | カレンダー          | 記録したトレーニングを反映させ、見やすくする為。 | トレーニング記録で入力して頂いたデータの種目をカレンダーに反映。 | トレーニング記録で入力して頂くと反映されて入力されます。その日入力し忘れても、日付、時間からデータを入手しているので、後からでも入力可能。本日の日付になると色がつきます。 | 7 | 
| ３ | 共有投稿 | トレーニングした内容など自由に投稿できる為、自分自身がトレーニングした内容などを発信して共有するとこができる様にする為。 | 投稿ページから自由に共有したいことを投稿できる。 | 空投稿はできない。また投稿したら、投稿時間、ニックネーム、アイコンが表示される。 | 8 | 
| ２ | 投稿に対しコメント | 投稿に対し、詳しく聞きたいことなどを聞けるようにする為。 | 投稿に対してコメント入力欄、コメントするボタンをつけ、そこからコメントすることができる。 | コメントの空投稿はできない。コメントと同時にコメントしたユーザーのニックネーム、時間、削除ボタンが表示される。 | 10 | 
| ２ | いいね機能 | 投稿に対しいいねと思ったらいいねをできるようにする為。 | 投稿にハートマークが出るので、そこを押して頂く。 | ハートマークを押して頂くと色が変わりカウントがされます。一つの投稿に対して一人のユーザーは一回しかいいねが押せない。また、いいねした投稿にもう一度いいねを押すと取り消すとこができ、カウントも減ります。 | 10 | 
| ２ | トレーニング詳細 | トレーニングした内容を後から見直す事ができるようにする為。 | カレンダーに反映されたトレーニング情報を押して頂きますと詳細が見ることができます。 | 誤って記録したものを削除ボタンで取り消すとこができます。 | 5 | 
| ２ | ユーザーアイコン | 共有ページで投稿してもアイコンが表示される為、どんなユーザーなのかを他のユーザーが知る為。 | 好きな写真を表示するとこができます。 | 表示される部分としては、ログイン後のカレンダーページとトレーニング共有ページ、ユーザーの詳細ページで表示されます。 | 10 | 
| ２ | ユーザー編集 | 登録した後に変更したいと思った時に編集できるようにする為。 | ニックネームとアイコン写真を変更できます。 | 後からニックネーム、アイコン写真を変更したい時に変更できます。 | 5 | 
| ２ | 他のユーザー詳細 | どんな人が投稿しているのかを知る為。 | 投稿者のユーザー名を押して頂きますと詳細ページに遷移します。 | ユーザーの年齢、性別、過去に投稿した投稿内容をユーザー詳細ページで見ることができます。 | 5 | 
| ２ | トレーニング数カウント | トレーニングする人のモチベーションを上げる為。 | 年間トレーニング数、月間トレーニング数を表示されます。 | トレーニング記録ページにて、トレーニングを保存して頂きますとカウントされます。 | 5 | 


>## 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/ca960d6db2def12d6a2a07051e0708e9.png)](https://gyazo.com/ca960d6db2def12d6a2a07051e0708e9)
「トレーニング記録へ」からトレーニングした内容を入力してただきますと反映され年間、月別でカウントされる様になっております。

[![Image from Gyazo](https://i.gyazo.com/dcb7b26fc813296ac19acf3fa1c4d734.png)](https://gyazo.com/dcb7b26fc813296ac19acf3fa1c4d734)
登録しているユーザーの投稿に対してもコメントやいいねをすることもできます。

[![Image from Gyazo](https://i.gyazo.com/abb74a12586f106717168e38e35180ec.png)](https://gyazo.com/abb74a12586f106717168e38e35180ec)
ユーザー名を押して頂きますと過去の投稿を見ることもできます。

>## 実装予定の機能:

洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。
>## データベース設計:
[![Image from Gyazo](https://i.gyazo.com/b47360dcdbbbebcf39e0081663b68453.png)](https://gyazo.com/b47360dcdbbbebcf39e0081663b68453)

>## ローカルでの動作方法
### バックエンド
* Ruby, Ruby on Rails

### フロントエンド
* HTML, Scss, 

### データベース
* MySQL, SequelPro

### インフラ
* AWS

### Webサーバー(本番環境)
* heroku

### アプリケーションサーバー
* heroku
AWS
### ソース管理
* GitHub, GitHubDesktop

### テスト
* RSpec

### エディタ
* VSCode
- - -





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
