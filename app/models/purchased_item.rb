class PurchasedItem < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    belongs_to :product
    # accepts_nested_attributes_for :products
    has_many :sellers, through: :products

end
