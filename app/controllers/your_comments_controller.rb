class YourCommentsController < ApplicationController

	def create
      @company = Company.find(params[:company_id])
      @your_comment = @company.your_comments.create(your_comment_params)
      redirect_to company_path(@company)
  end

  def destroy
    @company = Company.find(params[:company_id])
    @your_comment = @company.your_comments.find(params[:id])
    @your_comment.destroy
    redirect_to company_path(@company)
  end
 
  private
    def your_comment_params
      params.require(:your_comment).permit(:commenter, :body)
    end
end

