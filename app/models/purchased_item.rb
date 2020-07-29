class PurchasedItem < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    has_many :products
    # accepts_nested_attributes_for :products
    has_many :sellers, through: :products
    
end
