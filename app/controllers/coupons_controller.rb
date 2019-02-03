class CouponsController < ApplicationController
  before_action :set_coupon, only: [:edit, :show]

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def edit
  end

  def index
    @coupons = Coupon.all
  end

  def show
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
