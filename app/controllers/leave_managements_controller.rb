class LeaveManagementsController < ApplicationController
  def index
    @leave_managements = LeaveManagement.all
  end

  def show
    @leave_management = LeaveManagement.find(params[:id])
  end

  def new
     @leave_management = LeaveManagement.new
  end

  def create
    @leave_management = LeaveManagement.new(leave_params)
    @leave_management.user = current_user
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
