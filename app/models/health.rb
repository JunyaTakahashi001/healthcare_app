class Health < ApplicationRecord
    validates :temperature_morning, presence: true, length: { maximum: 4 }
end
