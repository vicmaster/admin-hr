require 'spec_helper'

describe EmployeesController do

  describe "#index" do
    before do
      Employee.should_receive(:all)
    end

    specify do
      get :index, format: 'json'
      response.should be_success
    end

  end

  describe 'Post: #Create' do
    let(:employee) { Fabricate :employee }

    before do
      Employee.should_receive(:create).and_return employee
    end

    specify do
      post :create, format: 'json'
      response.should be_success
    end
  end

  describe 'Get #Show' do
    let(:employee){ Fabricate :employee}

    before do
      Employee.should_receive(:find).with(employee.id.to_s).and_return employee
    end

    specify do
      get :show,id: employee.id, format: 'json'
      response.should be_success
    end
  end


  describe 'Put #Update' do
    let(:employee){ Fabricate :employee}

    before do
      Employee.should_receive(:update).with(employee.id.to_s, employee).and_return employee
    end

    specify do
      put :update, id: employee.id, employee: employee, format: 'json'
      response.should be_success
    end
  end

  describe 'Delete #Destroy' do
    let(:employee) {Fabricate :employee}

    before do
      Employee.should_receive(:destroy).with(employee.id.to_s).and_return employee
    end

    specify do
      delete :destroy, id: employee.id, format: 'json'
      response.should be_success
    end
  end

end
