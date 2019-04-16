class CountriesController < ApplicationController

	def new
		@country = Country.new
	end

    def create
    @country = Country.new(country_params)
	@country.save
	redirect_to @country
    end

    def show
        @country = Country.find(params[:id])
    end

    def index
    @country = Country.all
    end


  private
	def country_params
	params.require(:country).permit(:country_name)
	end
end

