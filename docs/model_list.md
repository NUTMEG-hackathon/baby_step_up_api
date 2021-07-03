# model_list

## User

| column name           | type    | description            |
| --------------------- | ------- | ---------------------- |
| id                    | integer | ID                     |
| name                  | string  | 名前                   |
| email                 | string  | メールアドレス         |
| password              | string  | パスワード             |
| password_confirmation | string  | パスワード確認         |
| select_template       | integer | 選んでいるテンプレート |
| doing_step            | integer | 進行中のステップ       |
| reset_time            | time    | リセットする時間       |

### seed_fu

| id   | name    | email             | password   | password_confirmation | select_template | doing_step | reset_time |
| ---- | ------- | ----------------- | ---------- | --------------------- | --------------- | ---------- | ---------- |
| 1    | mizu    | mizu@email.com    | mizumizu   | mizumizu              | 0               | 0          | 12:00      |
| 2    | mashimo | mashimo@email.com | mashimashi | mashimashi            | 0               | 0          | 12:00      |



## Template

| column name | type    | description    |
| ----------- | ------- | -------------- |
| id          | integer | ID             |
| title       | string  | テンプレート名 |
| user_id     | integer | Userとn-1      |

### seed_fu

| id   | title   | user_id |
| ---- | ------- | ------- |
| 1    | sample1 | 1       |
| 2    | sample2 | 2       |

## Step

| column name | type    | description   |
| ----------- | ------- | ------------- |
| id          | integer | ID            |
| title       | string  | ステップ名    |
| template_id | integer | Templateとn-1 |

### seed_fu

| id   | title | template_id |
| ---- | ----- | ----------- |
| 1    | step1 | 1           |
| 2    | step2 | 1           |
| 3    | step3 | 2           |
| 4    | step4 | 2           |

## DoneStep

終了したステップ

| column name | type    | description |
| ----------- | ------- | ----------- |
| id          | integer | ID          |
| step_id     | integer | Stepとn-1   |
| user_id     | integer | Userとn-1   |

### seed_fu

| id   | step_id | user_id |
| ---- | ------- | ------- |
| 1    | 1       | 1       |
| 2    | 3       | 2       |

## FavoriteTemplate

お気に入りのテンプレート

このテンプレートを選ぶこともできる

| column name | type    | description   |
| ----------- | ------- | ------------- |
| id          | integer | ID            |
| user_id     | integer | Userとn-1     |
| template_id | integer | Templateとn-1 |

### seed_fu

| id   | user_id | template_id |
| ---- | ------- | ----------- |
| 1    | 1       | 2           |
| 2    | 2       | 1           |
