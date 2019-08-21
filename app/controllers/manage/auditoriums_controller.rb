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

	def edit
		@auditorium = Auditorium.find(params[:id])
	end

	def update
		@auditorium = Auditorium.find(params[:id])
		if @auditorium.update_attributes(auditorium_params)
	      redirect_to manage_auditorium_path(@auditorium)
	    else
	      render action: "edit"
	    end
	end

	def destroy
	    @auditorium = Auditorium.find(params[:id])
	    if @auditorium.delete
	      redirect_to manage_auditoriums_path
	    else
	      render action: "edit"
	    end
	  end



	private

	def auditorium_params
		params.require(:auditorium).permit(
	      :name,
	      :capacity
	      )
	end
end
