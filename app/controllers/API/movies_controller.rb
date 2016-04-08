class Api::MoviesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: @movies = Movie.all
  end

  def show
   @movie = Movie.find(params[:id])
   render  json: @movie

    rescue ActiveRecord::RecordNotFound
    render json: {message: "Not found", status: 404 }
  end

  def new
    render json: @movie = Movie.new
  end

  def create

    render  json: @movie = Movie.new(movie: params[:title][:genre])
  end

  def edit
    render json: @movie
  end

  def update
    @movie = set_movie
    @movie.update(movie_params)

    render json: @movie

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }
  end


  def destroy
    @movie = set_movie
    @movie.destroy

    render @movie.destroy

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
      params.require(:movie).permit(:title, :genre)
  end


end
