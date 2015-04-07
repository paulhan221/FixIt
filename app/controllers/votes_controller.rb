class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    @concern = Concern.find(vote_params[:concern_id])

    if @vote.save
      redirect_to concern_path(@concern)
    else
      render template: "concerns/show"
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:concern_id, :user_id, :upvote)
  end
end
