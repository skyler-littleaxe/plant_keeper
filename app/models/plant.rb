class Plant < ApplicationRecord
    has_many :waterings
    has_many :users, :through => :waterings
    validates :name, presence: true 
    validates :water_need, presence: true
    validates :water_need, inclusion: { in: ["Once, weekly", "Every other day", "Three times a week", "Daily", "Multiple times a day" ]}
    validates :water_need, inclusion: { in: ["Dark", "Low Light", "Medium Light", "Sunny", "Outside" ]}
end
