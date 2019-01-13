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
        
      },
   ) or return
   @sneakers = @filterrific.find.page(params[:page])

   respond_to do |format|
     format.html
     format.js
   end
  end
  
  
  def create
    Sneaker.create sneakers_ref: params[:sneakers_ref], brand: params[:brand], title: params[:title], color: params[:color], img_url: params[:img_url]
    redirect_to "/sneakers/"
  end
  
  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @sneakers = Sneaker.find_by id: params[:id]
    @stocks = Stock.where(sneaker_id: params[:id])
  end
  
  def update
    @sneakers = Sneaker.find(params[:id])
    @sneakers.sneakers_ref = params[:sneakers_ref] 
    @sneakers.brand = params[:brand]
    @sneakers.title = params[:title]
    @sneakers.color = params[:color]
    @sneakers.img_url = params[:img_url]
    @sneakers.save
    redirect_to "/sneakers/#{params[:id]}"
  end
  
  def destroy
  @sneakerid = params[:id]
  Stock.where(sneaker_id: params[:id]).destroy_all
  Sneaker.find(@sneakerid).destroy
  redirect_to "/sneakers"
  end
  
  def search
  redirect_to "/sneakers?utf8=✓&filterrific%5Bsearch_sneakers_ref%5D=#{params[:reference]}&filterrific%5Bsearch_brand%5D=#{params[:marque]}&filterrific%5Bsearch_title%5D=#{params[:modele]}&filterrific%5Bsearch_color%5D=&commit=+++Chercher+++"
  end
  
end
