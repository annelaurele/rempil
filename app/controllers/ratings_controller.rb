class RatingsController < ApplicationController
  def new
    @rating = Rating.new
    @shop = Shop.find(params[:shop_id])
    @rental = Rental.find(params[:rental_id])
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @shop = Shop.find(params[:shop_id])
    @rating.shop = @shop
    if @rating.save
      redirect_to rentals_path
    else
      flash[:alert] = "OUPSI, ça beug !"
      render :new
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  private

  def rating_params
    params.require(:rating).permit(:content, :rating)
  end
end
