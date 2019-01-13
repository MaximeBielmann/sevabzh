class StocksController < ApplicationController
  def create
    @sneakers = Sneaker.all
    Stock.create sneaker_id: params[:sneaker_id], seller_id: params[:seller_id], size: params[:size], offer_link: params[:offer_link], price: params[:price], old_price: params[:old_price]
    redirect_to "/sneakers/#{params[:sneaker_id]}/"
  end
  
  def index
    @stocks = Stock.all
  end
  
  def update
  end
end
