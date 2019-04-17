class ImagesController < ApplicationController

	def new 
		@image= Image.new
	end

	def create
		@image =Image.new(image_params)
		@image.save
		redirect_to @image
	end

	def show
		@image = Image.find(params[:id])
	end

	def index
		@image = Image.all
	end

  private
	def image_params
		params.require(:image).permit(:image_d)
	end
end
