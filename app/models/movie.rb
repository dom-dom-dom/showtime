class Movie < ApplicationRecord
  belongs_to :auditorium
  has_many :screenings
  has_many :orders, through: :screenings

  def to_s
  	self.title
  end
end
