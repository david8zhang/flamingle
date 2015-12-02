class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @charities = current_user.charities.all
    end
end
