class Api::Upvotes_Controller < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @upvote = Vote.all
    render json: @upvote = Upvote.all
  end

  def create_upvote
    @upvote = Upvote.new
    @upvote.movie = movie.find(params[:movie_id])
    @upvote.save

    render json: @upvote = Upvote.new
  end

end
