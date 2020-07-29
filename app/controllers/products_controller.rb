class ProductsController < ApplicationController
    before_action :require_logged_in
    skip_before_action :require_logged_in, only: [:index, :show]
    layout 'product'

    def index
      @shoes = Product.shoe.select {|t| t.notsold}
      @accessories = Product.accessory.select {|t| t.notsold}
      @streetwears = Product.streetwear.select {|t| t.notsold}
    end

    def shoepage
      @products = Product.shoe.select {|t| t.notsold}
    end

    def accessorypage
      @products = Product.accessory.select {|t| t.notsold}
    end

    def streetwearpage
      @products = Product.streetwear.select {|t| t.notsold}
    end

    def show
      @product = Product.find(params[:id])
      @seller = @product.seller
    end

    def new
      @product = Product.new
      @categories = Category.all.sort_by{|t| t.title}
      @conditions = Condition.all.sort_by{|t| t.id}.reverse
    end

    def create
      product = Product.new(product_params)
      product.seller_id = current_user.id
      if product.save
          redirect_to product_path(product)
      else
          flash[:user_error] = product.errors.full_messages
          redirect_to new_product_path
      end
    end

    def edit
      @product = Product.find(params[:id])
      @categories = Category.all.sort_by{|t| t.title}
      @conditions = Condition.all.sort_by{|t| t.id}.reverse
    end

    def update
      product = Product.find(params[:id])
      if product.update(product_params)
        redirect_to product_path(product)
      else
        flash[:user_error] = product.errors.full_messages
          redirect_to edit_product_path
      end
    end
        

    private

    def product_params
      params.require(:product).permit(:name, :seller_id, :product_type, :price, :condition, :color, :image)
    end

end
