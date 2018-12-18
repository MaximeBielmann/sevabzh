class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all.select('sneakers_ref, brand, title, color, img_url').distinct('sneakers_ref').page(1).per(10)
  end
  
  def create
    Sneaker.create sneakers_ref: params[:sneakers_ref], brand: params[:brand], title: params[:title], color: params[:color], size: params[:size], seller: params[:seller], img_url: params[:img_url], offer_link: params[:offer_link], price: params[:price], shipping_cost: params[:shipping_cost], shipping_time: params[:shipping_time]
    redirect_to "/sneakers"
  end
  
  def show
    @sneakers = Sneaker.find(params[:id])
    @sellers = Sneaker.where(params[:sneakers_ref])
  end
  
  def update
    @sneakers = Sneaker.find(params[:id])
    @sneakers.sneakers_ref = params[:sneakers_ref] 
    @sneakers.brand = params[:brand]
    @sneakers.title = params[:title]
    @sneakers.color = params[:color]
    @sneakers.size = params[:size]
    @sneakers.seller = params[:seller]
    @sneakers.img_url = params[:img_url]
    @sneakers.offer_link = params[:offer_link]
    @sneakers.price = params[:price]
    @sneakers.shipping_cost = params[:shipping_cost]
    @sneakers.shipping_time = params[:shipping_time]
    @sneakers.save
    redirect_to "/sneakers/#{params[:id]}"
  end
  
  def destroy
  Sneaker.find(params[:id]).destroy
  redirect_to "/sneakers"
  end
end
