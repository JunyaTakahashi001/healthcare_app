class Health < ApplicationRecord
    validates :temperature_morning, presence: true, length: { maximum: 4 }
    validates :temperature_night, presence: true, length: { maximum: 4 }
    validates :user_id, uniqueness: { scope: [:date, :user_id] }
end
