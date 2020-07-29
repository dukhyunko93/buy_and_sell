class AddColumnIdsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :buyer_id, :integer
    add_column :reviews, :seller_id, :integer
  end
end
