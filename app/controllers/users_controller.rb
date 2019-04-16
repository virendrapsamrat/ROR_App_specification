class UsersController < ApplicationController
	def new
		@user = User.all
	end
	
	def create
		@user = User.new(user_params)
		@user.save
		redirect_to @user
	end


    def show
      @user = User.find(params[:id])
    end

    def index
    @user = User.all
    end


  private
	def user_params
	params.require(:user).permit(:email, :first_name, :last_name, :company_id, :role_id, :start_date, :end_date, :monthly_charge, :image_id)
	end

end
