class PurchasedItemsController < ApplicationController
    before_action :require_logged_in
    layout 'purchased_items'

    def new
      @purchased_item = PurchasedItem.new
      @product = Product.find(params[:id])
      @user = current_user
      if current_user.id == @product.seller_id
        flash[:user_error] = "* You cannot buy your own item *"
        redirect_to product_path(@product)
      else
        render :new
      end
    end

    def create
      buyer_id = current_user.id
      purchased_item = PurchasedItem.create(buyer_id: buyer_id)
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
