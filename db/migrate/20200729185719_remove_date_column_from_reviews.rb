class RemoveDateColumnFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :reviewed_date
  end
end
