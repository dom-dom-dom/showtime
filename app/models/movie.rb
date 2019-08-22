class Movie < ApplicationRecord
  belongs_to :auditorium
  has_many :screenings

  def to_s
  	self.title
  end
end
