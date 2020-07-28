class PurchasedItem < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    has_many :products
    has_many :sellers, through: :products

end
