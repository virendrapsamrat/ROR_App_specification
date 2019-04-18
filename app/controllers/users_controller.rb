class UsersController < ApplicationController
	
	def veer
	 	@user = current_user
	end


	def viru	
		@user = User.all
	end

	def show
		@user = User.all
	end
   
    def update
	      @user = User.find(params[:id])
	 
	      if @user.update(user_params)
	       redirect_to @user
	      else
	       render 'edit'
	      end
    end


    private
       def user_params
           params.require(:user).permit(:first_name, :last_name, :country_id, :state_id, :city_id, :image, :monthly_charge, :email)
       end
end    

