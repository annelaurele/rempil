class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @shops = Shop.all.shuffle.first(5)
    # @similar_shops = Shop.where(category: @shop.category).where.not(id: @shop.id)
    @all_shops = Shop.all
    @markers = @all_shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        info_window: render_to_string(partial: "info_window", locals: { shop: shop })
      }
    end
  end
end
