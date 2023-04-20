
## users

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association

- has_many :recipes
- has_many :comments
- has_many :favorites

## recipes

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| name         | string  | null: false |
| caprion      | string  | null: false |
| cooking_time | integer | null: false |

### Association

- has_many :ingredients
- has_many :seasonings
- has_many :procedures
- has_many :comments
- has_many :favorites
- belongs_to :user

## ingredients

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| name   | text       |                               |
| recipe | references | null:false, foreign_key: true |

### Association

- belongs_to :recipe

## seasonings

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| name   | text       |                               |
| recipe | references | null:false, foreign_key: true |

### Association

- belongs_to :recipe

## procedures

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| name   | text       |                               |
| recipe | references | null:false, foreign_key: true |

### Association

- belongs_to :recipe

## comments

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| recipe | references | null:false, foreign_key: true |
| user   | references | null:false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recipe

## favorites

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| recipe | references | null:false, foreign_key: true |
| user   | references | null:false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recipe
