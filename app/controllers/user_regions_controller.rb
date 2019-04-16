class UserRegionsController < ApplicationController
	
	def new
		@user_region = UserRegion.all
	end
	
	def create
		@user_region = UserRegion.new(user_region_params)
		@user_region.save
		redirect_to @user_region
	end


    def show
      @user_region = UserRegion.find(params[:id])
    end

    def index
    @user_region = UserRegion.all
    end


  private
	def user_region_params
	params.require(:user_region).permit(:user_region_name)
	end

end
