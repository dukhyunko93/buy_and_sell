class PurchasedItem < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    has_many :products

end
