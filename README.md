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

model一覧は`/docs/model_list.md`に，

api一覧は`/docs/api_list.md`に記載する

