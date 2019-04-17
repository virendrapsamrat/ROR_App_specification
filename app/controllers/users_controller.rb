class UsersController < ApplicationController
	
	 def veer
	 	# @user = User.all
	 	@user = current_user
	 end


	def viru
		@user = User.all
	end

end
