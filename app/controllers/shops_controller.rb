class ShopsController < ApplicationController
    def index
        if params[:query].present?
            @shops = Shop.algolia_search(params[:query])
        else
            @shops = Shop.all
        end
    end

    def show
        @shop = Shop.find(params[:id])
        # @rent
        @similar_shops = Shop.where(category:@shop.category).where.not(id: @shop.id)
        als_count = Rental.where(user: current_user)  #.where id = current_user ??
        @menus = Menu.where(shop: @shop)
    end
end
