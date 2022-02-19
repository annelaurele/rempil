class ShopsController < ApplicationController
    def show
        @shop = Shop.find(params[:id])
        @rent
        als_count = Rental.where(user: current_user)  #.where id = current_user ??
    end

    def index
        @shops = Shop.all
        @user = current_user
    end
end
