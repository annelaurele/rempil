class ShopsController < ApplicationController
    def show
        @shop = Shop.find(params[:id])
        @rentals_count = Rental.where(user: current_user)  #.where id = current_user ??
    end
end
