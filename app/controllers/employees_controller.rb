class EmployeesController < ApplicationController
  respond_to :json

  def index
    respond_with Employee.all
  end

  def create
    respond_with Employee.create(params[:employee])
  end

  def show
    respond_with Employee.find(params[:id])
  end

  def update
    respond_with Employee.update_attributes(params[:id], params[:employee])
  end

  def destroy
    respond_with Employee.destroy(params[:id])
  end

end
