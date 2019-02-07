class SneakersController < ApplicationController
  def index
    
    @filterrific = initialize_filterrific(
     Sneaker,
     params[:filterrific],
     select_options: {
        search_sneakers_ref: Sneaker,
        search_brand: Sneaker,
        search_title: Sneaker,
        search_color: Sneaker,
        search_price: Stock
        
      }, :persistence_id => false,
   ) or return 
   
   @sneakers = @filterrific.find.page(params[:page])
   respond_to do |format|
     format.html
     format.js
   end
   
   
  end
  
  
  def create
    Sneaker.create sneakers_ref: params[:sneakers_ref], brand: params[:brand], title: params[:title], color: params[:color], img_url: params[:img_url], img_url2: params[:img_url2], img_url3: params[:img_url3]
    redirect_to "/admin/"
  end
  
  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @sneakers = Sneaker.find(params[:id])
    @stocks = Sneaker.find(params[:id]).stocks
    @sellers = Seller.includes(:stocks).references(:stocks).where(stocks: { sneaker_id: params[:id] })
    @releases = Sneaker.find(params[:id]).calendars
    # Stock.includes(:sellers).where(sneaker_id: "4113").select(:logo_url, :vendor, :size, :old_price, :price, :offer_link)
    # Seller.joins(:stocks).where(stocks: { sneaker_id: "4113" })
    # Seller.includes(:stocks).where(stocks: { sneaker_id: "4113" }).select(:logo_url, :vendor, :size, :old_price, :price, :offer_link)
    # Stock.preload(:sellers).where(sneaker_id: "4113")
  end
  
  def update
    @sneakers = Sneaker.find(params[:id])
    @sneakers.sneakers_ref = params[:sneakers_ref] 
    @sneakers.brand = params[:brand]
    @sneakers.title = params[:title]
    @sneakers.color = params[:color]
    @sneakers.img_url = params[:img_url]
    @sneakers.img_url2 = params[:img_url2]
    @sneakers.img_url3 = params[:img_url3]
    @sneakers.save
    redirect_to "/sneakers/#{params[:id]}"
  end
  
  def destroy
  @sneakerid = params[:id]
  Stock.where(sneaker_id: params[:id]).destroy_all
  Calendar.where(sneaker_id: params[:id]).destroy_all
  Sneaker.find(@sneakerid).destroy
  redirect_to "/sneakers"
  end
  
  def search
  @reference = params[:reference].to_s
  @marque = params[:marque].to_s
  @modele = params[:modele].to_s
  redirect_to "/sneakers?utf8=✓&filterrific%5Bsearch_sneakers_ref%5D=#{@reference}&filterrific%5Bsearch_brand%5D=#{@marque}&filterrific%5Bsearch_title%5D=#{@modele}&filterrific%5Bsearch_color%5D=&commit=+++Chercher+++"
  end
  
end
