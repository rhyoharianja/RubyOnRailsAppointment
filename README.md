# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Route And Path To Use
=============================

# Attempt to access API without a token
$ http :3000/todos
# Signup a new user - get token from here
$ http :3000/signup name=ash email=ash@email.com password=foobar password_confirmation=foobar
# Get new user todos
$ http :3000/todos \
> Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
# create todo for new user
$ http POST :3000/todos title=Beethoven \
> Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
# Get create todos
$ http :3000/todos \
Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
