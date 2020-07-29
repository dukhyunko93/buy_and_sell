class ReviewsController < ApplicationController

  def new
    @purchased_item = PurchasedItem.find(params[:id])
    @seller = @purchased_item.product.seller
    @buyer = current_user
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to purchased_items_path
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :purchased_item_id, :buyer_id, :seller_id)
  end

end
