class ShopsController < ApplicationController
    def show
        @shop = Shop.find(params[:id])
        # @rent
        als_count = Rental.where(user: current_user)  #.where id = current_user ??
    end

    def index
        if params[:query].present?
            sql_query = "category ILIKE :query OR name ILIKE :query"
            @shops = Shop.where(sql_query, query: "%#{params[:query]}%")
        else
            @shops = Shop.all
        end
    end

end
