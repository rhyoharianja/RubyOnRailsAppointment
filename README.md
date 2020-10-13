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


# GEM Dependencies Used
=============================
* rspec-rails - Testing framework.
* factorybotrails - A fixtures replacement with a more straightforward syntax. You’ll see.
* shoulda_matchers - Provides RSpec with additional matchers.
* database_cleaner - You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
* faker - A library for generating fake data. We’ll use this to generate test data.

# STEP TEST AND USE
=============================
$ bundle install
$ bundle exec rspec
$ rails routes
$ rails s


# Route And Path To Use
=============================

## Attempt to access API without a token
$ http :3000/hospitals
$ http :3000/hospitals/:hospital_id/doctors

# DOCTOR Hospitals
-----------------------------
## GET /hospitals/
$ http :3000/hospitals
## GET /hospitals/:hospital_id
$ http :3000/hospitals/1
## POST /hospitals/
$ http POST :3000/hospitals fullname='Dr.Aryani' specialist='bedah-anak'
## PUT /hospitals/:hospital_id
$ http PUT :3000/hospitals/1 fullname='Dr.Aryani' specialist='bedah-anak'
### DELETE /hospitals/:hospital_id
$ http DELETE :3000/hospitals/1

# DOCTOR CRUD
-----------------------------
## GET /hospitals/:hospital_id/doctors
$ http :3000/hospitals/2/doctors
## POST /hospitals/:hospital_id/doctors
$ http POST :3000/hospitals/2/doctors fullname='Dr.Aryani' specialist='bedah-anak'
## PUT /hospitals/:hospital_id/doctors/:id
$ http PUT :3000/hospitals/2/doctors/1 fullname='Dr.Aryani' specialist='bedah-anak'
### DELETE /hospitals/:hospital_id/doctors/1
$ http DELETE :3000/hospitals/2/doctors/1


# Appointment User / Patients
-----------------------------
## Signup a new user - get token from here
$ http :3000/signup name=ash email=harianja@suryo.com password=QWERTY!@#$r password_confirmation=QWERTY!@#$r
## Get new user hospitals
$ http :3000/appointments \
> Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
## create appointments for new user
$ http POST :3000/appointments checkup='konsultasi bedah' scheduledate='2020-10-21 09:00:00' doctor=1 \
> Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
## Get create appointments
$ http :3000/appointments \
Authorization:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE0ODg5MDEyNjR9.7txvLgDzFdX5NIUGYb3W45oNIXinwB_ITu3jdlG5Dds'
