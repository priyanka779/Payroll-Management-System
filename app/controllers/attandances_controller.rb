class AttandancesController < ApplicationController
  def index
    @attandances = Attandance.all
    
  end

  def new
    @attandance = Attandance.new 
  end

  def show
    @attandance = Attandance.find(params[:id])
    
  end

  def create
    @attandance = Attandance.create(attandance_param)
    @attandance.user = current_user
    # @attandance = Attandance.where(in_time: Time.now.beginning_of_day.utc..Time.now.end_of_day.utc).first_or_create!
    if @attandance.save
      # flash[:alert] = "Attandance  was saved"
      redirect_to @attandance
    else
      render :new
    end
  byebug
  end

 
  
  private
  def attandance_param
    params.require(:attandance).permit(:in_time,:out_time)
  end
end
