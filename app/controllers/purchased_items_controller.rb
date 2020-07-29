class PurchasedItemsController < ApplicationController
    before_action :require_logged_in

    def new
      @purchased_item = PurchasedItem.new
      @product = Product.find(params[:id])
    end

    def create
      buyer_id = current_user.id
      purchased_item = PurchasedItem.create(buyer_id:buyer_id)
      product = Product.find(params[:id])
      product.purchased_item_id = purchased_item.id
      product.save
      redirect_to root_path
    end

    def index

    end

    private

    def purchase_params
        params.require(:purchased_item).permit(:buyer_id)
    end

end
