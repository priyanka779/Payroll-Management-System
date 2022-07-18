class EmployeesController < ApplicationController
  before_action :authenticate_user!
  def index
    @employees = Employee.all  
  end
  def show
    @employee = Employee.find(params[:id])
  end
  def new
    if current_user.employee.nil? 
    @employee = Employee.new
    else 
      # render :inline => "<h1> Your Profile are alredy submited by you</h1>"
      render :blank
    end
  end
  
  def create
    @employee = Employee.new(employee_params)
    @employee.user = current_user
    if @employee.save
      redirect_to @employee
    else
      render :new 
    end
  end 
  def edit
    @employee = Employee.find(params[:id])
  end
  def update
  end

  def destroy
  end
  def blank
  end
  private
  def employee_params
    params.require(:employee).permit(:employee_id,:date_of_birth,:gender,:mobile, :date_of_join,:city,:designation)
  end
end
