class PendingCartsController < ApplicationController
  layout 'cart'

  def new

  end

  def index
    # @pending =
    @items = PendingCart.all

  end

  def destroy
    item = PendingCart.find(params[:id])
    item.destroy

    redirect_to pending_carts_path
  end

  def create
    PendingCart.create(user_id:current_user.id, product_id: params[:product_id])

    redirect_to pending_carts_path
  end



  private
  # def pending_params
  #   params.require(:pending_cart)
  # end
end
