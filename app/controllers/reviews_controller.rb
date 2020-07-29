class ReviewsController < ApplicationController

  def new
    @purchased_item = PurchasedItem.find(params[:id])
    @review = Review.new
  end

  def create
    review = Review.create(review_params)
    # product = Product.find(params[:id])

    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :product_id, :purchased_item_id)
  end

end
