class UsersController < ApplicationController
    before_action :require_logged_in
    skip_before_action :require_logged_in, only: [:new, :create]
    layout 'users'

    # USER SHOW PAGE SHOULD NOT HAVE ITEM THAT'S ALREADY SOLD 
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to controller: 'sessions', action: 'new'
        else
            flash[:user_error] = @user.errors.full_messages
            redirect_to signup_path
        end
    end

    def edit
        
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            redirect_to user_path(user)
        else
            flash[:user_error] = user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def show
      @seller = User.find(params[:id])
      reviews = @seller.seller_reviews
      @reviews = reviews.paginate(page: params[:review_page], per_page: 5)
      products = @seller.products.select {|p| p.notsold}
      @products = products.paginate(page: params[:product_page], per_page: 4)
      @user = current_user
    end
     
      private

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :name, :address, :email, :phone_number, :dob)
    end

end
