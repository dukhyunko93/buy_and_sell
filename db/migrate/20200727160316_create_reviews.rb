class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.date :reviewed_date
      t.integer :product_id
      t.integer :purchased_item_id

      t.timestamps
    end
  end
end
