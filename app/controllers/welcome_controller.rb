class WelcomeController < ApplicationController
    before_action :current_user
    layout 'home'

    def home
    end
end
