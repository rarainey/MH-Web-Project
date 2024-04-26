class Monster < ApplicationRecord
    has_one_attached :picture

    validates :name, presence: true, uniqueness: true

    validates :description, presence: true

    validates :monster_type, presence: true, inclusion: { in: %w(Bird Flying Piscine Fanged Brute Elder Relict), 
        message: "%{value} is not a valid monster type" }

    validates :weaknesses, presence: true, inclusion: { in: %w(Fire Thunder Water Ice Dragon), 
        message: "%{value} is not a valid element type" }

    validates :element, inclusion: { in: %w(Fire Thunder Water Ice Dragon), 
        message: "%{value} is not a valid element type" }, 
        allow_nil: true
        
    validates :rank, presence: true, numericality: { only_integer: true, in: 1..9, 
        message: "%{value} is not an integer between 1 and 9" }

    validates :tail_severable, inclusion: { in: [true, false] }

end
