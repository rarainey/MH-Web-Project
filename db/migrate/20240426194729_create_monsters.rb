class CreateMonsters < ActiveRecord::Migration[7.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.text :description
      t.string :monster_type
      t.text :weaknesses, array: true, default: []
      t.string :element
      t.integer :rank
      t.boolean :tail_severable

      t.timestamps
    end
  end
end
