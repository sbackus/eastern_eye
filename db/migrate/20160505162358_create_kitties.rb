class CreateKitties < ActiveRecord::Migration
  def change
    create_table :kitties do |t|
      t.string :image
      t.string :name
      t.string :animal
      t.integer :health

      t.timestamps null: false
    end
  end
end
