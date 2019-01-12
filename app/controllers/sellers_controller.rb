class SellersController < ApplicationController
  def index
    @sellers = Seller.all
  end
  
  def create
    Seller.create logo_url: params[:logo_url], vendor: params[:vendor], country: params[:country], description: params[:description], shop_link: params[:shop_link], payment: params[:payment], shipping_cost: params[:shipping_cost], shipping_time: params[:shipping_time]
    redirect_to "/sellers/"
  end
  
  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @sellers = Seller.find(params[:id])
  end
  
  def update
    @sellers = Seller.find(params[:id])
    @sellers.logo_url = params[:logo_url] 
    @sellers.vendor = params[:vendor]
    @sellers.country = params[:country]
    @sellers.description = params[:description]
    @sellers.shop_link = params[:shop_link]
    @sellers.shipping_cost = params[:shipping_cost]
    @sellers.shipping_time = params[:shipping_time]
    @sellers.payment = params[:payment]
    @sellers.save
    redirect_to "/sellers/#{params[:id]}"
  end

  def destroy
    Seller.find(params[:id]).destroy
    redirect_to "/sellers"
  end
end
