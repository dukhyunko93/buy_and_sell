class Product < ApplicationRecord
    belongs_to :seller, :class_name => :User
    belongs_to :purchased_item, optional: true
    has_many :reviews
    has_many :pending_cart
    has_many :conditions
    has_many :categories

    has_one_attached :image
    
    def notsold
        self.purchased_item_id == nil
    end

    def self.shoe
        Product.all.select {|t| t.product_type == "Shoe"}
    end

    def self.accessory
        Product.all.select {|t| t.product_type == "Accessory"}
    end

    def self.streetwear
        Product.all.select {|t| t.product_type == "Streetwear"}
    end

end
