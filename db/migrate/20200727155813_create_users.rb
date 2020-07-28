class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password_digest
      t.string :address
      t.string :email
      t.integer :phone_number
      t.date :dob

      t.timestamps
    end
  end
end
