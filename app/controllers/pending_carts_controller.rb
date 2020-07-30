class PendingCartsController < ApplicationController
  layout 'cart'

  def index
    @cart = PendingCart.all
  end

  def destroy
    item = PendingCart.find(params[:id])
    item.destroy

    redirect_to pending_carts_path
  end

  def create
    cart = PendingCart.new(cart_params)
    if cart.save
      redirect_to pending_carts_path
    else
      flash[:user_error] = cart.errors.full_messages
      redirect_back fallback_location: pending_carts_path
    end
  end

  private

  def cart_params
    params.require(:pending_cart).permit(:user_id, :product_id)
  end

end
