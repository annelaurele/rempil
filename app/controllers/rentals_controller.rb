class RentalsController < ApplicationController
  def index
    @user = current_user
    @total = Rental.where(user: @user).map(&:total_of_box).sum
    @all_users_rentals = Rental.where(user: @user)
    @actuals = @all_users_rentals.where(status: 0).sort_by(&:rental_time_end)
    @pasts = @all_users_rentals.where(status: 1).sort_by(&:rental_time_end)
    @paids = @all_users_rentals.where(status: 2).sort_by(&:rental_time_end)
    @rating = Rating.new
  end

  def qrcode
    @user = current_user
    @shop = Shop.find(params[:shop_id])
    @rental = Rental.find(params[:rental_id])
    # @menus = Menu.where(shop: @shop_id)
    # @menu = Menu.find(params[:shop_id])
    @total = Rental.where(user: @user).count + 1
    @menus = SelectionRental.where(rental: @rental).map do |selection|
      selection.menu
    end
    @qr = RQRCode::QRCode.new(@rental.id.to_s)
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
    @rental = Rental.new(
      rental_time_start: Date.today,
      rental_time_end: Date.today + 14.day,
      shop: @shop,
      user: current_user,
      total_of_box: 1,
      status: 0
    )
    @rental.selection_rentals.build(manage_menus(rental_params[:menus].to_h))
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
    params.require(:rental).permit(menus: {})
  end

  def set_status_pending
    @rental.mark('En cours')
    redirect_to @rental
  end

  def set_status_rendered
    @rental.mark('Rendu')
    redirect_to @rental
  end

  def set_status_paid
    @rental.mark('Payé')
    redirect_to @rental
  end

  private

  def manage_menus(menus)
    selection_filtered = menus.map do |menu_id, quantity|
      if quantity.to_i > 0
        {menu_id: menu_id, quantity: quantity.to_i}
      else
        nil
      end

    end
    selection_filtered.compact
  end
end
