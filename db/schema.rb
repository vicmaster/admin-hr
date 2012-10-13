# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121013174050) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "employees", :force => true do |t|
    t.string   "status"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "middle_name"
    t.string   "second_last_name"
    t.date     "date_of_birth"
    t.integer  "ssn"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "country"
    t.text     "address_line_1"
    t.text     "address_line_2"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "work_email"
    t.string   "home_email"
    t.string   "shirt_size"
    t.string   "passport_number"
    t.date     "passport_expiration_date"
    t.string   "visa_type"
    t.date     "visa_expiration_date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
