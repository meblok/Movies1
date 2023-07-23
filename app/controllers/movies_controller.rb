class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
      if @movie.save
        redirect_to movies_index_path
      else
        render :new
      end

  end


  private

  def movies_params
    params.require(:movie).permit(:name, :director, :synopsis)
  end
end
