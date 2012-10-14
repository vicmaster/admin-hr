class EmployeesController < ApplicationController
  respond_to :json

  def index
    employees = if params[:keywords]
                  #Employee.search { keywords params[:keywords] }.results
                  Employee.where("middle_name ILIKE ? OR first_name ILIKE ? or last_name ILIKE ?",
                                 "%#{params[:keywords]}%", "%#{params[:keywords]}%", "%#{params[:keywords]}%")
                else
                  Employee.all
    end
    respond_with employees
  end

  def create
    respond_with Employee.create(params[:employee])
  end

  def show
    respond_with Employee.find(params[:id])
  end

  def update
    respond_with Employee.update(params[:id], params[:employee])
  end

  def destroy
    respond_with Employee.destroy(params[:id])
  end

end
