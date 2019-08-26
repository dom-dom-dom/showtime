class Screening < ApplicationRecord
  after_validation :set_seating_capacity, on: :create

  belongs_to :movie
  has_many :orders

  validates :movie_id, 
	  presence: true

  def sold_out?
  	self.seats === 0
  end


  private

  def set_seating_capacity
  	self.seats = self.movie.auditorium.capacity unless self.movie.blank?
  end

end
