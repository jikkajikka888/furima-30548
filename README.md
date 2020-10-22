users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_year         | string | null: false |
| birth_month        | string | null: false |
| birth_day          | string | null: false |

  Association

- has_many :items
- has_many :purchases


items テーブル

| Column        | Type       | Options                        |
| ------------- | -----------| ------------------------------ |
| prodact_name  | text       | null: false                    |
| description   | text       | null: false                    |
| price         | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

  Association

- belongs_to :user
- has_one :purchase


purchases テーブル

| Column        | Type        | Options                        |
| ------------- | ----------- | ------------------------------ |
| user          | references  | null: false, foreign_key: true |
| item          | references  | null: false, foreign_key: true |
| created_at    | timestamp	  | null: false                    |

  Association

- belongs_to :user
- belongs_to :item
- has_one :address


addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| postal_code        | string     | null: false                    |
| city               | string     | null: false                    |
| house_number       | string     | null: false                    |
| building_name      | string     | null: false                    |
| phone_number       | string     | null: false                    |
| purchases          | references | null: false, foreign_key: true |

  Association

- belongs_to :purchase