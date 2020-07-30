class Review < ApplicationRecord
    belongs_to :purchased_item

    belongs_to :buyer, :class_name => :User
    belongs_to :seller, :class_name => :User


    #Creat avg_rating

end
