class PendingCart < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates_uniqueness_of :product_id, scope: :user_id, message: 'is already in the cart!'
    validate :sold_item_cannot_be_in_the_cart

    def sold_item_cannot_be_in_the_cart
        if self.product.sold
            @errors.add(:prodcut, 'Cannot put sold item in the cart')
        end
    end

end
