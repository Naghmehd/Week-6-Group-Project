class Api::UpvotesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @upvote = Vote.all
    render json: @upvote = Upvote.all
  end

  def create_upvote
    @upvote = Upvote.new
    @upvote.movie = Movie.find(params[:movie_id])
    @upvote.save

    render json: @upvote = Upvote.new
  end

end
