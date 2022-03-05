class RentalsController < ApplicationController
  def index
    @user = current_user
    @total = Rental.where(user: @user).map(&:total_of_box).sum
    @all_users_rentals = Rental.where(user: @user)
    @actuals = @all_users_rentals.where(status: 0)
    @pasts = @all_users_rentals.where(status: 1)
    @paids = @all_users_rentals.where(status: 2)
    @rating = Rating.new
  end

  def qrcode
    @qr = RQRCode::QRCode.new("16")
    @svg = @qr.as_svg(
    color: "000",
    shape_rendering: "crispEdges",
    module_size: 11,
    standalone: true,
    use_path: true
    )
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @rental = Rental.new(status: 0, total_of_box: 1)
    @rental.shop = @shop
    @rental.user = current_user
    if @rental.save
      redirect_to shop_rental_qrcode_path(@shop, @rental)
    else
      render :new
    end
  end

  def new
    @shop = Shop.find(params[:shop_id])
    @rental = Rental.new
  end

  def rental_params
    params.require(:rental).permit(:rental_time_start, :rental_time_end, :status, :shop_id, :user_id, :number_box, :max_capacity)
  end

end
