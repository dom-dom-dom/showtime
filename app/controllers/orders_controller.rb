class OrdersController < ApplicationController
	def new
		@screening = Screening.find(params[:screening_id])
		@order = @screening.orders.new
		if @screening.sold_out?
			redirect_to movie_path(@screening.movie)
		end
	end

	def create
		@screening = Screening.find(params[:screening_id])
		@order = @screening.orders.new(order_params)
		@order.movie = @screening.movie
		if @screening.sold_out?
			redirect_to new_screening_order_path(@screening)
		else
			if @order.save
				OrderMailer.order_confirmation(@order).deliver_later
				@order.screening.seats -= 1
				@order.screening.save
			else
				render 'new'
			end
		end
	end

	private

	def order_params
		params.require(:order).permit(
			:name,
		    :email,
		    :card,
		    :exp,
			)
	end
end
