# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# users テーブル

|    column   |  type  |   option   |
|-------------|--------|------------|
| dancer_name | string | null:false |
|   email     | string | unique:true, null: false |

# Association
# has_many best-16, best-8, semi-finals, final

# best-16 テーブル

|    column   |  type  |   option   |
|-------------|--------|------------|
|     user    | references | foreign key: true |
| battler_id  | integer  | null: false|
| foundation  | integer  | null:false |
| accuracy    | integer  | null: false|
| originality | integer  | null:false|
| dynamic     | integer  | null:false|
| strategy    | integer  | null:false|
| score       | integer  | null:false|

# Association 
# belongs_to user

# best-8 テーブル

|    column   |  type  |   option   |
|-------------|--------|------------|
|     user    | references | foreign key: true |
| battler_id  | integer   | null: false|
| foundation  | integer  | null:false |
| accuracy    | integer   | null: false|
| originality | integer   | null:false|
| dynamic     | integer   | null:false|
| strategy    | integer   | null:false|
| score       | integer   | null:false|


# Association 
# belongs_to user

# semi-finals テーブル

|    column   |  type  |   option   |
|-------------|--------|------------|
|     user    | references | foreign key: true |
| battler_id  | integer   | null: false|
| foundation  | integer  | null:false  |
| accuracy    | integer   | null: false|
| originality | integer   | null:false|
| dynamic     | integer   | null:false|
| strategy    | integer   | null:false|
| score       | integer   | null:false|

# Association 
# belongs_to user

# final テーブル

|    column   |  type  |   option   |
|-------------|--------|------------|
|     user    | references | foreign key: true |
| battler_id  | string   | null: false|
| foundation  | integer  | null:false |
| accuracy    | integer  | null: false|
| originality | integer  | null:false|
| dynamic     | integer  | null:false|
| strategy    | integer  | null:false|
| score       | integer  | null:false|

# Association 
# belongs_to user

# アプリ概要
# ジャッジ用の項目別点数入力、バトラーが配点確認できるスコア管理アプリ

# ページ概要
# 1 ユーザー新規登録（ジャッジの方々用） gem devise
# 2 点数入力用のページ 5項目と合計 number_field
# 3 バトラー配点確認用のページ パターン４つ(best16, beat8, semi-final, final )

# 問題点
# バトラー用配点確認ページについて、DBから直で値を出力する場合

# 1: ３人のジャッジかいると、１バトルについて６つのレコードの情報が交互、または変に表示される
# 例  id 1 バトラーAの配点
#     id 2 バトラーBの配点
#     id 3 バトラーAの配点
#     id 4 バトラーAの配点
#     id 5 バトラーBの配点
#     id 6 バトラーBの配点  という感じ、これでは出力できても見づらい orderメソッドで解決？
# 2: 合計点について
#    現状、合計点はジャッジに暗算してもらう以外思いついていない。sumメソッド？

# 3:バトラーの名前の登録について、
#  battler-1, battler-2, battler-3などで指定。(Active Hash)解決
