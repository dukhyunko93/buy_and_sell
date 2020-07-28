class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :purchased_item_id
      t.integer :seller_id
      t.string :name
      t.string :type
      t.integer :price
      t.string :condition
      t.string :color

      t.timestamps
    end
  end
end
