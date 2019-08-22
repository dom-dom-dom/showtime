class OrdersController < ApplicationController
	def new
		@screening = Screening.find(params[:screening_id])
		@order = @screening.orders.new
	end

	def create
		@screening = Screening.find(params[:screening_id])
		@order = @screening.orders.new(order_params)

		if @order.save
			@order.screening.seats -= 1
			@order.screening.save
			redirect_to @order
		else
			render 'new'
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