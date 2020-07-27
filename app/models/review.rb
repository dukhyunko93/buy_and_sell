class Review < ApplicationRecord
    belongs_to :purchased_item
    belongs_to :product

end
