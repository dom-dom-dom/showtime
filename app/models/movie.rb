class Movie < ApplicationRecord
  belongs_to :auditorium

  def to_s
  	self.title
  end
end
