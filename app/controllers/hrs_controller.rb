class HrsController < ApplicationController
   
    def index
        @hrs = Hr.all
    end
    
    def show
        @hr = Hr.find(params[:id])
    end
        

    def new
      @hr = Hr.new
    end
    
    def create
        @hr = Hr.new(hr_params)
        @hr.save
        if @hr.save
            redirect_to @hr
        else
            render :new
        end
    end

    def edit
        @hr = Hr.find(params[:id])
    end

    def update
       
    end

    def destroy
    end

    private  

    def hr_params
    params.require(:hr).permit(:name,:code,:type,:leave_unit,:description,:leave_type,:date_start,:date_end)
    end
end
