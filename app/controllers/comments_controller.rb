class CommentsController < ApplicationController
	

  def create
		@concern = Concern.find(params[:concern_id])
		@concern.comments.create(comment_params)
		redirect_to "/concerns/#{params[:concern_id]}"
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end
end
