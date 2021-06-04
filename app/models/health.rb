class Health < ApplicationRecord
    validates :temperature_morning, presence: true, length: { maximum: 4 }
    validates :temperature_night, presence: true, length: { maximum: 4 }
end
