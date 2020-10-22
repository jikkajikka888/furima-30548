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
| birthday           | date   | null: false |

  Association

- has_many :items
- has_many :purchases


items テーブル

| Column         | Type       | Options                        |
| -------------- | -----------| ------------------------------ |
| prodact_name   | string     | null: false                    |
| description    | text       | null: false                    |
| price          | integer    | null: false                    |
| catedory       | string     | null: false                    |
| condition      | string     | null: false                    |
| postage_burden | string     | null: false                    |
| consighor      | string     | null: false                    |
| shipping_date  | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

  Association

- belongs_to :user
- has_one :purchase


purchases テーブル

| Column        | Type        | Options                        |
| ------------- | ----------- | ------------------------------ |
| user          | references  | null: false, foreign_key: true |
| item          | references  | null: false, foreign_key: true |

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
| building_name      | string     |                                |
| phone_number       | string     | null: false                    |
| purchases          | references | null: false, foreign_key: true |

  Association

- belongs_to :purchase