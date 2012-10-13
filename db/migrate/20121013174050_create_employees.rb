class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :status
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :middle_name
      t.string :second_last_name
      t.date :date_of_birth
      t.integer :ssn
      t.string :gender
      t.string :marital_status
      t.string :country
      t.text :address_line_1
      t.text :address_line_2
      t.string :state
      t.integer :zip_code
      t.string :mobile_phone
      t.string :home_phone
      t.string :work_email
      t.string :home_email
      t.string :shirt_size
      t.string :passport_number
      t.date :passport_expiration_date
      t.string :visa_type
      t.date :visa_expiration_date

      t.timestamps
    end
  end
end
