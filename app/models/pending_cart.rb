class PendingCart < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates_uniqueness_of :product_id, message: 'is already in the cart!'
    validate :not_my_item

    def not_my_item
        if Product.all.select {|i| i.seller_id == self.id}
        errors.add(:product, 'cannot be your own!')
        end
    end

end
