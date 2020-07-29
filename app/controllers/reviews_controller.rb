class ReviewsController < ApplicationController

  def new
    # byebug
    # button from index page of purchased_item
    purchased_item = PurchasedItem.find(params[:id])
    @review = Review.new(purchased_item_id:purchased_item.id)
  end

  def create
    byebug

    review = Review.create(review_params)
    # product = Product.find(params[:id])

    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :purchased_item_id )
  end

end
