### アプリケーション名
- ファイリングアプリケーション

### アプリケーション概要
- ファイリングしたい書類を保存しておけるアプリケーション。

### URL
- https://filing-app.herokuapp.com/

### テスト用アカウント
- Basic認証 ID:omizu／PASS:1108
- 本番環境テスト用アカウント：test1@com／PASS：1a1a1a

### 利用方法
- ログインして、作りたいファイルを作成します。さらにファイルに入れたい書類の名前と会社名、PDFを登録すると会社順に表示され、クリックすると書類の一覧が表示されます。

### 目指した課題解決
- ターゲット：企業用ファイリングアプリを考えてるので「職業：事務職員」とします。事務職員は女性が多いため「性別：女性」とします。事務職は若い人からできる仕事なので「年齢：20代半ば」とします。
- 課題：紙媒体でファイリング作業を行うと、「並びの統一性を待たせるのに手間がかかる」「破れ・スレががあると修正しなければならない」「ラベルを貼り、パンチで穴を開けて閉じることに時間がかかる」「中の書類が触れると閉じれず、ファイルが増えていく」「他の支社と共有できない」ことが課題に挙げられます。
           
### 洗い出した要件
- ユーザー管理機能
- ファイル作成機能
- ファイル一覧表示機能
- ファイル名編集機能
- ファイル削除機能
- 書類登録機能
- 顧客名一覧機能
- 顧客書類詳細機能
- 書類編集機能
- 書類削除機能

### 実装した機能についての画像やGIFおよびその説明
- ログインページと、サインアップページの切り替えができます。
[![Image from Gyazo](https://i.gyazo.com/9f1b7d03ec660bda100474e651029c74.gif)](https://gyazo.com/9f1b7d03ec660bda100474e651029c74)
- ファイル名を登録すると、一覧にリンクが表示されます。
[![Image from Gyazo](https://i.gyazo.com/e118b7194a74cf27077c8d59199115f7.gif)](https://gyazo.com/e118b7194a74cf27077c8d59199115f7)

### 実装予定の機能
- ファイル名編集機能
- ファイル削除機能
- 書類登録機能
- 顧客名一覧機能
- 顧客書類詳細機能
- 書類編集機能
- 書類削除機能

### データベース設計
 [![Image from Gyazo](https://i.gyazo.com/2aaaad3030d0efa26d1fde10838b9d86.png)](https://gyazo.com/2aaaad3030d0efa26d1fde10838b9d86)

### ローカルでの動作方法
- 起動方法

git clone https://github.com/onacyan2/filing-app.git

cd filing-app　を指定

rails s で起動する

- Rails6.0 利用




# テーブル設計

## usersテーブル

|Column              |Type    |Options                    |
|--------------------|--------|---------------------------|
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :business_files



## business_filesテーブル

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
| business_file     | references | null: false, foreign_key: true |

### Association
- belongs_to :business_file
