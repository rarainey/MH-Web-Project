class Monster < ApplicationRecord
    has_one_attached :picture
    serialize :weaknesses, JSON
end
