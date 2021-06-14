class Plant < ApplicationRecord
    has_many :water_logs
    has_many :users, :through => :water_logs
end
