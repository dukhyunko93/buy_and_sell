class User < ApplicationRecord
    has_secure_password
    has_many :products, :foreign_key => 'seller_id'
    has_many :pending_carts, :foreign_key => 'buyer_id'
    has_many :purchased_items, :foreign_key => 'buyer_id'
    has_many :reviews
    validates :name, presence: true
    validates :name, uniqueness: true

    validates :user_name, presence: true
    validates :user_name, uniqueness: true

    def seller_reviews
        Review.all.select {|t| t.seller_id == self.id}
    end

end
