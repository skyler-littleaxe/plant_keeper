class Watering < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  validates :water_date, presence: true
  validates :water_date, date: true
  validates :water_date, 
            date: { before_or_equal_to: Proc.new {Time.now}
  validates :water_time, presence: true
  
  
end
