class MyUserController < ApplicationController
	
	def show_all_profile_name
         @user = User.all
	end

	def show_particular_user_profile
	     @user = User.find(params[:my_user_id])
	end

end
