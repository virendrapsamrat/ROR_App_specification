class CompaniesController < ApplicationController

  before_action :authenticate_user!

	def index 
		@companies= Company.all
	end

	def show
		@company = Company.find(params[:id])
	end
	
	def new
	end


	def edit
        @company = Company.find(params[:id])
    end

	def create
		@company = Company.new(company_params) 
        @company.save
        redirect_to @company
	end

  def update
    @company = Company.find(params[:id])
   
    if @company.update(company_params)
      redirect_to @company_params
    else
      render 'edit'
    end
  end


  private
    def company_params
      params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date)
    end
end
