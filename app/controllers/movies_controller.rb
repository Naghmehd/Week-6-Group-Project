class MoviesController < ApplicationController

  def index
    @movie.Movie.all
  end

  def show
    @movie = set_Movie
  end

  def new
    @movie = Movie.new
  end

  def create
    movie.create(user_id: params[:movie][:user_id],
                title: params[:movie][:title],
                genre:params[:movie][:genre])

    @movie.save
  end

  def edit
    @movie = set_Movie
  end

  def update
    Movie.update(params[:id], Movie_params)
  end

  def destroy
    @movie = set_Movie
    @movie.destroy
  end

private

  def set_Movie
    @movie = Movie.find(params[:id])
    @movie = Movie.find(params[:id])
  end

  def Movie_params
    params.require(:Movie).permit(:Moviename)
  end

end
