class CalendarsController < ApplicationController
  def index
    @releases = Sneaker.includes(:calendars).references(:calendars).select(:release_date).where("release_date > ?", 2.day.ago).distinct.order('release_date')
    #@releases = Sneaker.joins(:calendars).where("sneaker_id > ?", true).select(:sneaker_id, :title, :img_url).distinct
  end
  
  def create
    Calendar.create sneaker_id: params[:sneaker_id], seller_id: params[:seller_id], release_date: params[:release_date], release_link: params[:release_link], release_price: params[:release_price]
    redirect_to "/admin"
  end
  
  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @calendars = Calendar.find(params[:id])
    @sneakers = Sneaker.all
    @sellers = Seller.all
  end
  
  def update
    @calendars = Calendar.find(params[:id])
    @calendars.sneaker_id = params[:sneaker_id] 
    @calendars.seller_id = params[:seller_id]
    @calendars.release_date = params[:release_date]
    @calendars.release_link = params[:release_link]
    @calendars.release_price = params[:release_price]
    @calendars.save
    redirect_to "/calendar/#{params[:id]}"
  end

  def destroy
    Calendar.find(params[:id]).destroy
    redirect_to "/calendar/"
  end
end
