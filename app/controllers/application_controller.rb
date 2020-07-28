class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
    end

    def logged_in?
        current_user.id != nil
    end

    def require_logged_in
        redirect_to controller: 'users', action: 'new' unless logged_in?
    end

end
