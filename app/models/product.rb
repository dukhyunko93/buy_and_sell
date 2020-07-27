class Product < ApplicationRecord
    belongs_to :seller, :class_name => :User
    belongs_to :buyer, :class_name => :User, optional: true
    belongs_to :purchased_item, optional: true
    has_many :reviews
    has_many :pending_cart

end
