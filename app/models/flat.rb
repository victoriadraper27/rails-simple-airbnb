class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true }
  validates :number_of_guests, inclusion: { in: 1..9 }
end
