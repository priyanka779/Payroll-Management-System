class AttandancesController < ApplicationController
    def index
        @attandances = Attandance.all
    end

    def show
        @attandance = Attandance.find(params[:id]) 
    end

    def new 
        @attandance = Attandance.new
    end 

    def create
        @attandance = Attandance.new(leave_params)
  
        if @attandance.save
            redirect_to @attandance
        else
            render :new
        end
    end
     
    def edit
    end

   private
   def attandance_params
    params.require(:attandance).permit(:employee_id, :date, :attandance_type, :in_time, :out_time, :status)
   end
end
