class Review < ApplicationRecord
    belongs_to :purchased_item
    belongs_to :buyer, :class_name => :User
    belongs_to :seller, :class_name => :User

    validates_presence_of :comment, :rating

    # def self.ratings
    #   Review.all.map do |r|
    #     r.rating
    #   end
    # end

    # def self.avg_rating
    #   self.ratings.select do |r|
    #     r
    #   end
    # end

end
