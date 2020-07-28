class ProductsController < ApplicationController

    def index
      @products = Product.all.each {|t| t.purchased_item_id == nil}
    end

    def show
      @product = Product.find(params[:id])
      @seller = @product.seller
    end

    private

    def product_params
      params.require(:product).permit(:name, :product_type, :price, :condition, :color, :img_url)
    end

end
