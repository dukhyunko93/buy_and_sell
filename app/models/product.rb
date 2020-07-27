class Product < ApplicationRecord
    belongs_to :user
    belongs_to :purchased_item , optional: true
    has_many :reviews
    has_many :pending_cart

end
