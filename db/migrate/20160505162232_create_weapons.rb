class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.integer :damage
      t.integer :durability
      t.string :image
      t.string :type
      t.string :name
      t.references :kitty

      t.timestamps null: false
    end
  end
end
