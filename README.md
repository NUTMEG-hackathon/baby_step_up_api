# README

## git cleneしたら

`docker-compose build`

`docker-compose up`

`http://localhost:3000`にいくと，データベースがないといわれるので，

コンテナをたてたままの状態で，

`docker-compose run api rails db:create`

`docker-compose run api rails db:migrate`

`docker-compose run api rails db:seed_fu`

`http://localhost:3000`にいくと，railsのwelcomeページが現れる．

railsのwelcomeページが出るが，api飛ばすだけなので今回は気にしない．

`docker-compose down`をすると，なぜかデータベースが消えるので，

再度`rails db:create`をしていく．

なので，最初に必要なものはあらかた`rails db:seed_fu`で作成させる．

api一覧は`/docks/api_list.md`に記載する
