class Manage::ScreeningsController < ApplicationController

  def new
  	@screening = Screening.new
  end

  def create
  	@screening = Screening.new(screening_params)
  	@screening.seats = @screening.movie.auditorium.capacity
  	if @screening.save
  		redirect_to manage_movie_path(@screening.movie)
  	else
  		render 'new'
  	end
  end

  private

  def screening_params
  	params.require(:screening).permit(
  		:movie_id,
  		:start,
  		:end,
  		)
  end

end
