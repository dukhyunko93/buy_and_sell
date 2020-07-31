class User < ApplicationRecord
    has_secure_password
    has_many :products, :foreign_key => 'seller_id'
    has_many :pending_carts, :foreign_key => 'buyer_id'
    has_many :purchased_items, :foreign_key => 'buyer_id'
    has_many :reviews

    validates_presence_of :name, :user_name, :address, :email, :phone_number, :dob
    validates_uniqueness_of :name


    def seller_reviews
        Review.all.select {|t| t.seller_id == self.id}
    end

    def avg_rating
      if self.seller_reviews.any?
        total = self.seller_reviews.map {|r| r.rating}.sum
        total / self.seller_reviews.count
      else
        'No Rating'
      end
    end

    def blank_stars
       5 - avg_rating.to_i
    end


end
