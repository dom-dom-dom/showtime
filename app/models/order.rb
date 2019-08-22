class Order < ApplicationRecord
  belongs_to :screening
  belongs_to :movie
end
