# テーブル設計

## users テーブル

| Column    | Type    |  Options     |
| --------  | ------- | ------------ |
| email     | string  | null: false  |
| password  | string  | null: false  |
| name      | string  | null: false  |
| profile   | text    | null: false  |
| occupation| text    | null: false  |
| position  | text    | null: false  |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type          | Options     |
| ---------- | ------------- | ------------ |
| 
### Association

- belongs_to :user
- has_many :comments

## Comments テーブル

| Column    | Type       | Options      |
| --------- | ---------- | ------------ |
| text      | text       | null: false  |
| user      | references |              |
| prototype | references |              |

### Association

- belongs_to :user
- belongs_to :prototype