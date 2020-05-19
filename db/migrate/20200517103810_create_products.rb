class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :explain
      t.integer :notax_price
      t.string :image_id
      t.integer :genre_id
      t.boolean :is_valid,default:false

      t.timestamps
    end
  end
end
