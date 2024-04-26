class CreateWeapons < ActiveRecord::Migration[7.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack
      t.string :type
      t.boolean :is_elemental
      t.string :element
      t.integer :element_attack
      t.integer :rarity

      t.timestamps
    end
  end
end
