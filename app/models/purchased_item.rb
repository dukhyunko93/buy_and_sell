class PurchasedItem < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    belongs_to :product

    validates_uniqueness_of :product
    
end
