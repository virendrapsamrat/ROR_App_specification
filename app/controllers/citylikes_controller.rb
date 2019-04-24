class CitylikesController < ApplicationController
   before_action :find_citycomment
	before_action :find_like, only: [:destroy]

	def hilike
		if already_liked?
             flash[:notice] = "You can't like more than once"
         else
		    @citycomment.citylikes.create(user_id: current_user.id)
         end
		 redirect_to city_path(@city1)
	end


    def byelike
       	if !(already_liked?)
             flash[:notice] = "Cannot unlike"
          else
            @citycomment.citylikes.where(user_id: current_user).destroy_all
          end
          redirect_to city_path(@city1)
    end


    def already_liked?
       Citylike.where(user_id: current_user.id, citycomment_id:
       params[:citycomment_id]).exists?
    end

    def find_like
        @like = @citycomment.citylikes.find(params[:id])
    end

    private
	  def find_citycomment
	      @citycomment = Citycomment.find(params[:citycomment_id])
	      @city1 = City.find(params[:city_id])
	  end
end
