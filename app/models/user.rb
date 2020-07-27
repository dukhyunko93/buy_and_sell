class User < ApplicationRecord
    has_many :products
    has_many :pending_carts
    has_many :purchased_items
    has_many :reviews, through: :purchased_items

end
