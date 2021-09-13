# README

Simple app with facebook, github, google authentications using [OmniAuth Gem](https://github.com/omniauth/omniauth). There is a table with sorting, filtering and searching with [Ransack Gem](https://github.com/activerecord-hackery/ransack).

* Configuration

```
bundle update
bundle

rm config/credentials.yml.enc
rm config/master.key
EDITOR="nano" rails credentials:edit
```
Insert your credentials
```
rails db:reset
```
If not work enter:
```
sudo service mysql start
```
```
yarn add @rails/webpacker
bundle update webpacker
bundle exec rails webpacker:compile

bundle exec rails server
```

* Database initialization
```
DATABASE_URL = [mysql2:// ...]
```
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
```
heroku login
heroku git:clone -a web-users-new
heroku config:set RAILS_MASTER_KEY="$(< config/master.key)"
git push heroku main
heroku run rake db:migrate
```
See [Heroku Doc](https://devcenter.heroku.com/articles/getting-started-with-rails6#specify-your-ruby-version)
