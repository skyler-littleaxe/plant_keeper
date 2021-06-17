class Watering < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  validates :name, presence: true 
  validates :water_need, presence: true
end
