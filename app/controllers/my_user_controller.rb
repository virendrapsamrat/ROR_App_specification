class MyUserController < ApplicationController
	
	def show_all_profile_name
         @user = User.all
	end

	def show_particular_user_profile
	     @user = User.find(params[:my_user_id])
	end
     
    def edit
    	@user = User.find(params[:id])
    end
   
    def user_destroy
    	@user = User.find(params[:my_user_id])
    	@user.destroy
 
    	redirect_to show_all_profile_name_path
    end

    def destroy
    	@user = User.find(params[:id])
    	@user.destroy
 
    	redirect_to show_all_profile_name_path
    end

end
