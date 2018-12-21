class SneakersController < ApplicationController
  def index
    
    @filterrific = initialize_filterrific(
     Sneaker,
     params[:filterrific],
     select_options: {
        search_sneakers_ref: Sneaker
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
  Sneaker.find(params[:id]).destroy
  redirect_to "/sneakers"
  end
  
end
