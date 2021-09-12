# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Configuration

```
cd web-users

rm config/credentials.yml.enc

EDITOR="nano" rails credentials:edit

rails db:reset

yarn add @rails/webpacker

bundle update webpacker

bundle exec rails webpacker:compile

bundle exec rails server
```

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
