class UsersController < ApplicationController
	
	 def new
	 	@user = User.all
	 end

	def show
		@user = User.all
	end

end
