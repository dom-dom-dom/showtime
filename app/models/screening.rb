class Screening < ApplicationRecord
  belongs_to :movie
  has_many :orders

  def sold_out?
  	self.seats === 0
  end
end
