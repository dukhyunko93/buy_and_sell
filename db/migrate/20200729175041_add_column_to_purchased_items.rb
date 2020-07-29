class AddColumnToPurchasedItems < ActiveRecord::Migration[6.0]
  def change
    add_column :purchased_items, :product_id, :integer
  end
end
