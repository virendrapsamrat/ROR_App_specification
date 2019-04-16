class PlacesController < ApplicationController
	def new 
		@place= Place.new
	end

	def create
		@place =Place.new(place_params)
		@place.save
		redirect_to @place
	end

	def show
		@place = Place.find(params[:id])
	end

	def index
		@place = Place.all
	end

	private
	def place_params
		params.require(:place).permit(:place_name)
	end
end
	