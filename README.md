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



4 tables 

user table , dealership table , car table , test drive 

dealer 

    has many cars (m)
    has many test drive through cars (m)


cars (join)
    belongs to dealer (m)
    belongs to test drive (m) 
    dealer id (t)
    test drive id (t)
    car attrs 


user 
    has many test drives (m)
    has many cars through test drives (m)

test drives 
    has many users (m)
    has many cars (m)
    has many dealers through cars (m) 
    user id (t)
    time stamp (t)
