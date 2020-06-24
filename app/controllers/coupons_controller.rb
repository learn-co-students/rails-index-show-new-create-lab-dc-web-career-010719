
class CouponsController < ApplicationController

  before_action :get_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def show

  end

  def new
    @coupon = Coupon.new
  end

  def create
    # byebug
    coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon
  end

  private

  def get_coupon
    @coupon = Coupon.find(params[:id])
  end

end
