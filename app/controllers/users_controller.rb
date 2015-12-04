class UsersController < ApplicationController
    def show
        @user = current_user
        @charities = @user.charities.all
        @donations = @user.donations.all
    end
end
