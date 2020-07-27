class Review < ApplicationRecord
    belongs_to :purchased_item
    belongs_to :buyer, through: :purchased_item

end
