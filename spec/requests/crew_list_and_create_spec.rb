require 'spec_helper'


describe 'Admin can manage employees', js: true  do

  include_examples "web session"

  before do
    expect(page).to have_content('Dashboard')
  end

  describe 'Admin can go to crew page' do
    before do
      click_link 'Personal Information'
      click_link 'Crew'
      expect(page).to have_content('Add New Employee')
    end

    it 'Admin can create a new employee' do
      fill_in 'status', with: 'Active'
      fill_in 'first_name', with: 'John'
      fill_in 'last_name', with: 'McCarter'
      fill_in 'nickname', with: 'Macky'
      fill_in 'middle_name', with: 'Paul'
      fill_in 'second_last_name', with: 'Rooney'
      fill_in 'date_of_birth', with: '1985/04/01'
      fill_in 'ssn', with: '123456789'
      fill_in 'gender', with: 'Male'
      fill_in 'marital_status', with: 'Single'
      fill_in 'country', with: 'USA'
      fill_in 'address_line_1', with: 'Hidalgo Street 456 San Francisco'
      fill_in 'address_line_2', with: ''
      fill_in 'state', with: 'CA'
      fill_in 'zip_code', with: '245786'
      fill_in 'mobile_phone', with: '312456878'
      fill_in 'home_phone', with: '3121541546'
      fill_in 'work_email', with: 'john.work@test.com'
      fill_in 'home_email', with: 'john.home@test.com'
      fill_in 'shirt_size', with: 'M'
      fill_in 'passport_number', with: '123456789'
      fill_in 'passport_expiration_date', with: '2020/04/03'
      fill_in 'visa_type', with: 'B3'
      fill_in 'visa_expiration_date', with: '2020/04/03'
      click_button 'Add new employee'
      expect(page).to have_content('John')
      expect(page).to have_content('john.work@test.com')
    end
  end
end
