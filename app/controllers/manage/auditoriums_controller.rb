class Manage::AuditoriumsController < ApplicationController
	def index
		@auditoriums = Auditorium.all
	end

	def new
		@auditorium = Auditorium.new
	end

	def create
		@auditorium = Auditorium.new(auditorium_params)
		if @auditorium.save
			redirect_to manage_auditoriums_path
		else
			render 'new'
		end
	end

	def show
		@auditorium = Auditorium.find(params[:id])
	end

	private

	def auditorium_params
		params.require(:auditorium).permit(
	      :name,
	      :capacity
	      )
	end
end
