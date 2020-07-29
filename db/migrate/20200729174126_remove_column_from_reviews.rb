class RemoveColumnFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :product_id
  end
end
