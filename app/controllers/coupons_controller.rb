class CouponsController < ApplicationController



  def new
    @coupon = Coupon.new
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(params.require(:coupon).permit(:store, :coupon_code))
    redirect_to @coupon
  end

end
