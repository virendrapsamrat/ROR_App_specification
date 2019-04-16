class StatesController < ApplicationController
	
	def new
		@state = State.new
	end

    def create
    @state =State.new(state_params)
	@state.save
	redirect_to @state
    end

    def show
             @state = State.find(params[:id])
    end

    def index
    @state = State.all
    end


  private
	def state_params
	params.require(:state).permit(:state_city)
	end
end
