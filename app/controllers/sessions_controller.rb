class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(user_name: params[:user][:user_name])

        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash[:user_error] = "Username or Password is incorrect"
            redirect_to login_path
        end
    end

    def destroy
          session.delete :user_id

         redirect_to '/'
    end

end
