class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def show
    get_coupon
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end


  private

    def get_coupon
      @coupon = Coupon.find(params[:id])
    end

    def to_s
      get_coupon
      @coupon.coupon_code + " " + @coupon.store
    end
end
