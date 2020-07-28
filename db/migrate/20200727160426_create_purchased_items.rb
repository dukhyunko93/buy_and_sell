class CreatePurchasedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_items do |t|
      t.integer :buyer_id

      t.timestamps
    end
  end
end
