class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :artist
      t.string :description
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
