Dedicated HR Manager
========
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/vicmaster/admin-hr)


Admin HR app


## Installation

```
$ git clone git@github.com:vicmaster/admin-hr.git
$ cd admin-hr
$ bundle install
$ rake db:setup
```

###Note: We are using postgress, then if you use mac and you have
###problems at moment to run setup you need install pg
### you can use this postgress for mac is very easy to use the link is
http://postgresapp.com/

## TDD: Set Guard

```
$ rake db:test:prepare
$ bundle exec guard start
```

### We are using Devise then to create a new user you need
### go into rails console
```
$ rails console
Admin.create!({:email => "test@test.com", :password =>
"12345679", :password_confirmation => "12345679" })
```

## Run Application

```
$ rails server
```

## Demo Online

* http://admin-hr.herokuapp.com/


## Aditional Usage


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/vicmaster/admin-hr/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

