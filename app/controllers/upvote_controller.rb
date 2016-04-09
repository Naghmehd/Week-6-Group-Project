class UpvoteController < ApplicationController
  def index
    @upvote = Upvote.all
  end

  def create_upvote
    @upvote = Upvote.new
    @upvote.movie = movie.find(params[:movie_id])
    @upvote.save
    redirect_to :back #@upvote.movie
  end
end
