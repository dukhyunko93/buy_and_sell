class ReviewsController < ApplicationController

  def new
    @purchased_item = PurchasedItem.find(params[:id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to purchased_items_path
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :purchased_item_id )
  end

end
