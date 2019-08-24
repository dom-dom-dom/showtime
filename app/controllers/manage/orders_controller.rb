class Manage::OrdersController < ApplicationController
  def index
  	@q = Order.ransack(params[:q])
  	@orders = @q.result(distinct: true)
  end

  def show
  end
end
