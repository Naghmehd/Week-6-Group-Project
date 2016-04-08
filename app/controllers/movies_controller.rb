class MoviesController < ApplicationController

  def index
    @Movie.Movie.all
  end

  def show
    @Movie = set_Movie
  end

  def new
    @Movie = Movie.new
  end

  def create
    @Movie = Movie.new
    @Movie.save
  end

  def edit
    @Movie = set_Movie
  end

  def update
    Movie.update(params[:id], Movie_params)
  end

  def destroy
    @Movie = set_Movie
    @Movie.destroy
  end

private

  def set_Movie
    @Movie = Movie.find(params[:id])
  end

  def Movie_params
    params.require(:Movie).permit(:Moviename)
  end

end
