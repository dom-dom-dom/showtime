class Manage::ScreeningsController < ApplicationController

  def new
  	@screening = Screening.new
  end

  def create
  	@screening = Screening.new(screening_params)
  	get_screening_capacity
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

  def get_screening_capacity
    @screening.seats = @screening.movie.auditorium.capacity unless @screening.movie.blank?
  end

end
