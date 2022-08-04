class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]
    def index
      @finances = Finance.all 
      @users = User.all 
    end

    def show
      @user = @finance.user
      respond_to do |format|
        if params[:layout] == "pdf"
          format.html { render layout: false, template:"finances/show.pdf.erb" }
        else
          format.html
        end
        format.pdf do
          render pdf: "file_name", template:"finances/show.pdf.erb" # Excluding ".pdf" extension.       
        end
      end
    end

    def new
      @finance = Finance.new
    end

    def create 
      net_salary = params[:basic_salary].to_i - params[:deduction].to_i
      finance_params = {basic_salary: params[:basic_salary],deduction: params[:deduction]}
      new_param =  finance_params.merge({net_salary: net_salary})
      @finance = current_user.finances.new(new_param)
    
      @finance.user = current_user
  
      if @finance.save
        redirect_to finances_path
      else
        render :show
      end
    end 

    def edit
      @finance = Finance.find(params[:id])
    end 

    def update
      if @finance.update(finance_params)
        flash[:notice] = "updated Successfully."
        redirect_to @finance
      else
            render 'edit'
      end
    end

    def destroy
      # @finance = Finance.find(params[:id])
        if @finance.present?
          @finance.destroy
        end
        redirect_to finances_path
    end

    private
    def set_finance
      @finance = Finance.find(params[:id])
    end

    def finance_params 
      params.require(:finance).permit(:basic_salary, :deduction, :net_salary)
    end
end
