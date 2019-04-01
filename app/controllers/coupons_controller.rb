class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def create
    Coupon.create seller_id: params[:seller_id], brand_id: params[:brand_id], sneaker_id: params[:sneaker_id], coupon_title: params[:coupon_title], coupon_start: params[:coupon_start], coupon_end: params[:coupon_end]
    redirect_to "/admin"
  end

  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @coupons = Coupon.find(params[:id])
    @sneakers = Sneaker.all
    @brands = Brand.all
    @sellers = Seller.all
  end

  def update
    @coupons = Coupon.find(params[:id])
    @coupons.seller_id = params[:seller_id]
    @coupons.brand_id = params[:brand_id]
    @coupons.sneaker_id = params[:sneaker_id]
    @coupons.coupon_title = params[:coupon_title]
    @coupons.coupon_start = params[:coupon_start]
    @coupons.coupon_end = params[:coupon_end]
    @coupons.save
    redirect_to "/coupons/#{params[:id]}"
  end

  def destroy
    Coupon.find(params[:id]).destroy
    redirect_to "/coupons"
  end
end
