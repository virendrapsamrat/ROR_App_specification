class NodesController < ApplicationController
	def new
		@node= Node.new
	end

	def create
		@node = Node.new(node_params)
		@node.save
		redirect_to @node
	end

	def show
		@node = Node.find(params[:id])
	end

	def index
	    @node = Node.all
	end

  private
	 def node_params
	  	params.require(:node).permit(:node_name)
	 end
end
