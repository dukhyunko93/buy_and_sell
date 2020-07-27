class User < ApplicationRecord
    has_many :products, :foreign_key => 'seller_id'
    has_many :pending_carts, :foreign_key => 'buyer_id'
    has_many :purchased_items, :foreign_key => 'buyer_id'
    has_many :reviews, through: :purchased_items

end
