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

	def create
		@company = Company.new(company_params) 
        @company.save
        redirect_to @company
	end



 def hilike
     @comment1 = Like.create_like(@model, current_user)
   end
 
   def byelike
      Like.create_dislike(@model, current_user)
    end
    



  private
    def company_params
      params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date)
    end
end
