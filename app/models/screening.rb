class Screening < ApplicationRecord
  belongs_to :movie
  has_many :orders

  def sold_out?
  	self.seats === 0
  end

  validates :movie_id, 
	  presence: true
end
