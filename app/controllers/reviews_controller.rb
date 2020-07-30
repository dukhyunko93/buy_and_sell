class ReviewsController < ApplicationController
  layout 'reviews'

  def new
    @purchased_item = PurchasedItem.find(params[:id])
    @seller = @purchased_item.product.seller
    @buyer = current_user
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    if review.save
      redirect_to purchased_items_path
    else
      flash[:user_error] = review.errors.full_messages
      redirect_back fallback_location: purchased_items_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :purchased_item_id, :buyer_id, :seller_id)
  end

end
