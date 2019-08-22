class Manage::MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
  end

  def create
  	@movie = Movie.new(movie_params)
  	if @movie.save
  		redirect_to manage_movie_path(@movie)
  	else
  		render 'new'
  	end
  end

  def update
	@movie = Movie.find(params[:id])
	if @movie.update_attributes(movie_params)
      redirect_to manage_movie_path(@movie)
    else
      render action: "edit"
    end
 end

 def destroy
    @movie = Movie.find(params[:id])
    if @movie.delete
      redirect_to manage_movies_path
    else
      render action: "edit"
    end
 end

  def edit
  	@movie = Movie.find(params[:id])
  end

  private

  def movie_params
  	params.require(:movie).permit(
  		:title,
  		:auditorium_id
  		)
  end
end
