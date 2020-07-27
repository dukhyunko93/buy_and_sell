class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :product_type
  end
end
