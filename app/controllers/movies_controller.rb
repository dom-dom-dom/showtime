class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  	@screenings = @movie.screenings.all.order(start: :asc)
  end
end
