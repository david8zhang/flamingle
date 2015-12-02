class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @charities = @user.charities.all
    end
end
