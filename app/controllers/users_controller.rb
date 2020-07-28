class UsersController < ApplicationController
    before_action :require_logged_in
    skip_before_action :require_logged_in, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to controller: 'sessions', action: 'new'
        else
            flash[:user_error] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
     
      private
     
    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :name, :address, :email, :phone_number, :dob)
    end

end
