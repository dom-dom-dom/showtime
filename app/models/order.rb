class Order < ApplicationRecord
  belongs_to :screening
  belongs_to :movie

  

  validates :card, numericality: { only_integer: true }

  validates :email, format: { with: /\A\S+@.+\.\S+\z/,
    message: "must be an email address" }

  validates :name,  
	  :email, 
	  :card,
	  :exp,
	  presence: true

end
