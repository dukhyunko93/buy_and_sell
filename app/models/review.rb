class Review < ApplicationRecord
    belongs_to :purchased_item
    belongs_to :seller, :class_name => :User
end
