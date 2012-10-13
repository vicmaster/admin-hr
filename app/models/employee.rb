class Employee < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :country, :date_of_birth, :first_name, :gender, :home_email, :home_phone, :last_name, :marital_status, :middle_name, :mobile_phone, :nickname, :passport_expiration_date, :passport_number, :second_last_name, :shirt_size, :ssn, :state, :status, :visa_expiration_date, :visa_type, :work_email, :zip_code
end
