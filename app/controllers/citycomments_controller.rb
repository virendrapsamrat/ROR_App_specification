class CitycommentsController < ApplicationController

	  def create
	      @city = City.find(params[:city_id])
	      @citycomment = @city.citycomments.create(citycomment_params)
	     # redirect_to city_path(@city)
	  end

	  def destroy
	    @city = City.find(params[:city_id])
	    @citycomment = @city.citycomments.find(params[:id])
	    @citycomment.destroy
	   ## redirect_to city_path(@city)
	  end
	 
	  private
	    def citycomment_params
	      params.require(:citycomment).permit(:user_id, :body)
	    end
end

