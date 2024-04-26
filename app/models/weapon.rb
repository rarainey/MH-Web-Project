class Weapon < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    validates :attack, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, 
        message: "%{value} is not a positive integer" }

    validates :weapon_type, presence: true, inclusion: { in:    ["Greatsword", "Sword and Shield", "Dual Blades", "Long Sword", "Hammer", 
                                                                "Hunting Horn", "Lance", "Gunlance", "Switch Axe", "Charge Blade", 
                                                                "Insect Glaive", "Bow", "Light Bowgun", "Heavy Bowgun"], 
        message: "%{value} is not a valid weapon type" }
    
    validates :is_elemental, inclusion: { in: [true, false] }
    
    validates :element, inclusion: { in: %w(Fire Thunder Water Ice Dragon), 
        message: "%{value} is not a valid element type" }, if: :is_elemental

    validates :element_attack, numericality: { only_integer: true, greater_than_or_equal_to: 0, 
        message: "%{value} is not a positive integer" }, if: :is_elemental

    validates :rarity, presence: true, numericality: { only_integer: true, in: 1..8, 
        message: "%{value} is not an integer between 1 and 8" }
        
end
