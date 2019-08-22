class Auditorium < ApplicationRecord
	has_many :movies

	def to_s
		self.name
	end
end
