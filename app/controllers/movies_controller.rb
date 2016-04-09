class MoviesController < ApplicationController

  def index
    @Movie.Movie.all

    all_movies = movie.all.sort_by { |m| [m.scores, m.title] }.reverse!
  end

  def show
    @Movie = set_Movie
  end

  def new
    @Movie = Movie.new
  end

  def create
    movie.create(user_id: params[:movie][:user_id],
                title: params[:movie][:title],
                genre:params[:movie][:genre]

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
