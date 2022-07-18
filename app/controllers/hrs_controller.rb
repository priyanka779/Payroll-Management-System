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
    params.require(:hr).permit(:leave_type,:leave_unit,:reason,:start_date,:end_date)
    end
end
