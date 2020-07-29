class PurchasedItemsController < ApplicationController
    before_action :require_logged_in

    def new
      # @purchased_item = PurchasedItem.new
      @current_user = current_user
      @product = Product.find(params[:id])
    end

    def create
      # byebug
      # buyer_id = current_user.id
      # product_id = params[:id]

      # purchased_item = PurchasedItem.create(buyer_id:buyer_id, product_id:product_id)
      purchased_item = PurchasedItem.create(purchase_params)
      product = purchased_item.product
      product.purchased_item_id = purchased_item.id
      product.save
      redirect_to root_path
    end

    def index
      @purchased_items = PurchasedItem.all
    end

    private

    def purchase_params
        params.require(:purchased_item).permit(:buyer_id, :product_id)
    end

end
