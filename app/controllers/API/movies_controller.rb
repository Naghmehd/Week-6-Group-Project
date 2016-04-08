class Api::MoviesController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json

  def index
    @movie = Movie.all
    respond_with(@movie)
  end

  def show
   @movie = Movie.find(params[:id])
   respond_with @movie
    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def new
    @movie = Movie.new
    respond_with @movie = movie.new
  end

  def create
    @movie = Movie.new
    respond_with @movie = movie.new(movie: params[:title][:genre])
  end

  def edit
    @movie = set_movie
    respond_with @movie
  end

  def update
    @movie = set_movie
    @movie.update(movie_params)

    respond_with @movie

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end


  def destroy
    @uer = set_movie
    @movie.destroy

    respond_with @movie.destroy

    rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
      params.require(:movie).permit(:moviename)
  end


end
