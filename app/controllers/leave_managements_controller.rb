class LeaveManagementsController < ApplicationController
  def index
    @leave_managements = LeaveManagement.all
  end

  def new
     @leave_management = LeaveManagement.new
  end

  def show
    @leave_management = LeaveManagement.find(params[:id])
  end

  def create
    @leave_management = LeaveManagement.new(leave_params)
  
    if @leave_management.save
        redirect_to @leave_management
    else
        render :new
    end
  end

  private
  def leave_params
    params.require(:leave_management).permit(:leave_type,:reason,:leave_unit,:start_date,:end_date)
  end
end
