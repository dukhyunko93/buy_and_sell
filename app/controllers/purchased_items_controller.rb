class PurchasedItemsController < ApplicationController
    before_action :require_logged_in
    layout 'purchased_items'

    def new
      @current_user = current_user
      @product = Product.find(params[:id])
      if current_user.id == @product.seller_id
        flash[:user_error] = "* You cannot buy your own item *"
        redirect_to product_path(@product)
      else
        render :new
      end
    end

    def create
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
