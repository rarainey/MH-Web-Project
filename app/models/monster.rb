class Monster < ApplicationRecord
    has_one_attached :icon
    serialize :weaknesses, Array
end
