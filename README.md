# テーブル設計

## usersテーブル

|Column              |Type    |Options                    |
|--------------------|--------|---------------------------|
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :files



## filesテーブル

|Column                  |Type        |Options                         |
|------------------------|------------|--------------------------------|
| file_title             | string     | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :documents



## documentsテーブル

|Column             |Type        |Options                         |
|-------------------|------------|--------------------------------|
| company_name      | string     | null: false                    |
| company_name_kana | string     | null: false                    |
| title             | string     | null: false                    |
| file              | references | null: false, foreign_key: true |

### Association
- belongs_to :file
