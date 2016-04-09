class DownvoteController < ApplicationController
  def index
    @downvote = Downvote.all
  end

  def create_downvote
    @downvote = Downvote.new
    @downvote.link = Link.find(params[:movie_id])
    @downvote.save
    redirect_to :back
  end
end
