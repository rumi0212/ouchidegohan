# <おうちdeお店ごはん>

## サイト概要
**おうちdeお店ごはん**は、「お店の味をおうちで食べたい！」「コロナ禍だし外食するのはちょっと、、」<br />
「このお店気になっていたけどどんな味だろう？」という様々な方へお店の味を自宅で楽しめるレシピサイトです。

- カテゴリ別にお店の詳細やレシピを投稿
- 掲載レシピに対するいいね、アレンジレシピやレビューの投稿、お気に入りレシピの保存（ブックマーク）

### サイトテーマ
<お店の味を自宅で楽しめる！お店側は店の宣伝になりお客さんを増やしたい！><br />
一人暮らしの方、家族がいる方、年齢問わずにお店の料理を自分で作っておうち時間を楽しめます。<br />
お店側もお店のレシピを公開することで「このお店の他のメニューも食べてみたい、行ってみたい。」<br />
となってくれることを１番にお店の宣伝につながる。

### テーマを選んだ理由
コロナ禍でお店の人もお客さんもみんなが喜ぶサービスを作りたいと思ってこのテーマにたどり着きました。

### ターゲットユーザ
- 顧客側
コロナ禍でお店に行くのはちょっと、、、だけど自宅で料理する時間も楽しみつつお店の味を味わいたい人

- 管理者側
お店の味を少しでもお客さんに知っていただき認知度を広め、お店に興味をいだいてもらいたい人

### 主な利用シーン
- 顧客側
お店に行くのはちょっとハードル高い。お店の味を自宅で作りたい。
レビュー機能、アレンジレシピを投稿できる機能、レシピの保存

- 管理者側
レシピ公開するのでお客さんのレビューと評価でお店の知名度も上げたい。
お客さんが投稿してくれたアレンジレシピも今後の参考にできる。


### おうちdeお店ごはんURL
http://ouchi-de-omisegohan.com/

```
【会員ユーザーアカウント】
   メールアドレス： ouchi_cook@test.com
   パスワード： ouchitest

【管理者アカウント】
   メールアドレス： test@test.com
   パスワード： admintest
```

## 実装機能リスト
### 顧客側
| 機能 | 未ログイン時利用可否 | 会員利用可否 |
| ------------- | :-------------: |:-------------: |
| 会員登録  | ○ | × |
| ログイン | ○ | ○ |
| ログアウト | × | ○ |
| 退会 | × | ○ |
| アレンジレシピ投稿 | × | ○ |
| アレンジレシピ編集 | × | ○ |
| アレンジレシピ下書き | × | ○ |
| レシピブックマーク | × | ○ |
| レシピいいね | × | ○ |
| レビュー投稿 | × | ○ |
| レビュー削除 | × | ○ |
| 会員詳細表示 | ○ | ○ |
| 会員情報編集 | × | ○ |

### 管理者側
| 機能 | 未ログイン時利用可否 |
| ------------- | :-------------: |
| ログイン | ○ |
| ログアウト | × |
| レシピ投稿 | × |
| レシピ一覧表示 | × |
| レシピ詳細表示 | × |
| レシピ編集表示 | × |
| レシピ下書き | × |
| 店舗一覧表示 | × |
| 店舗詳細表示 | × |
| 店舗編集表示 | × |
| 会員一覧表示 | × |
| 会員詳細表示 | × |
| 会員退会 | × |


## 設計書
### ER図
<img src="https://user-images.githubusercontent.com/106750897/206901824-a7aae0e6-d628-4e1a-8871-ed100136957e.png" width="800">


## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails, Bootstrap
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用ライブラリ
- devaise
- cocoon
- kaminari
- enum_help

## 使用素材
**【画像素材】**　<br />
- O-DAN(<https://o-dan.net/ja/>)
- photAC(<https://www.photo-ac.com/>)
- pixabay(<https://pixabay.com/ja/>)
- Canva(<https://www.canva.com/ja_jp/>)

**【アイコン・ロゴ】** <br />
- Font Awesoe(<https://fontawesome.com/>)