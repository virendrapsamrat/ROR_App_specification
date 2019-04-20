class LikesController < ApplicationController
	before_action :find_your_comment
	before_action :find_like, only: [:destroy]

	def hilike
		if already_liked?
             flash[:notice] = "You can't like more than once"
         else
		    @your_comment.likes.create(user_id: current_user.id)
         end
		redirect_to company_path(@company1)
	end


    def byelike
       	if !(already_liked?)
             flash[:notice] = "Cannot unlike"
          else
            @your_comment.likes.where(user_id: current_user).destroy_all
          end
           redirect_to company_path(@company1)
    end


    def already_liked?
       Like.where(user_id: current_user.id, your_comment_id:
       params[:your_comment_id]).exists?
    end

    def find_like
        @like = @your_comment.likes.find(params[:id])
    end

    private
	def find_your_comment
	@your_comment = YourComment.find(params[:your_comment_id])
	@company1 = Company.find(params[:company_id])
	end
end
