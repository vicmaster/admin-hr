Dedicated HR Manager
========
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/vicmaster/admin-hr)


Admin HR app


## Installation

```
$ git clone git@github.com:vicmaster/admin-hr.git
$ bundle install
$ rake db:setup
```
## TDD: Set Guard

```
$ rake db:test:prepare
$ bundle exec guard start
```

## We are using Devise then to create a new user you need go to rails
console like
```
$ rails console
Admin.create!({:email => "heriberto.perez@crowdint.com", :password => "12345679", :password_confirmation => "12345679" })
```

## Run Application

```
$ rails server
```

## Demo Online

* http://admin-hr.herokuapp.com/


## Aditional Usage
