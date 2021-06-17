class Plant < ApplicationRecord
    has_many :water_logs
    has_many :users, :through => :water_logs
    validates :name, presence: true 
    validates :water_need, presence: true
    validates :water_need, inclusion: { in: ["Once, weekly", "Every other day", "Three times a week", "Daily", "Multiple times a day" ]}
end
