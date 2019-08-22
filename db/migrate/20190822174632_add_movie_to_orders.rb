class AddMovieToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :movie, foreign_key: true
  end
end
