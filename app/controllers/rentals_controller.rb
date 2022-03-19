class RentalsController < ApplicationController
  def index
    @user = current_user
    @rentals = Rental.where(user: @user)
    @total = SelectionRental.where(rental: @rentals).map(&:quantity).sum
    @selection_rentals = SelectionRental.where(rental: @rentals)
    @user = check_status(@user, @total)
    @user.save
    @next_step = next_step_func(@total)
    @all_users_rentals = Rental.where(user: @user)
    @actuals = fusion_selection(@selection_rentals, @all_users_rentals.where(status: 0).sort_by(&:rental_time_end))
    @pasts = fusion_selection(@selection_rentals, @all_users_rentals.where(status: 1).sort_by(&:rental_time_end))
    @paids = fusion_selection(@selection_rentals, @all_users_rentals.where(status: 2).sort_by(&:rental_time_end))
    @rating = Rating.new
  end

  def qrcode
    @user = current_user
    @shop = Shop.find(params[:shop_id])
    @rental = Rental.find(params[:rental_id])
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

  def next_step_func(total)
    case
      when total < 5
        return 5 - total
      when total < 10
        return 10 - total
      when total < 15
        return 15 - total
      when total < 20
        return 20 - total
    end
  end

  def check_status(user, total)
    user.status = 0 if total < 5
    user.status = 1 if total >= 5
    user.status = 2 if total >= 10
    user.status = 3 if total >= 15
    user
  end

  def manage_menus(menus)
    selection_filtered = menus.map do |menu_id, quantity|
      if quantity.to_i > 0
        {menu_id: menu_id, quantity: quantity.to_i, user: current_user}
      else
        nil
      end
    end
    selection_filtered.compact
  end

  def fusion_selection(selections, rentals)
    res = []
    rentals.each do |rtl|
      tmp = []
      selections.each do |elm|
        if elm.rental.id == rtl.id
          rtl.total_of_box = elm.quantity
          res << rtl
        end
      end
      raise
    end
    res
  end
end
