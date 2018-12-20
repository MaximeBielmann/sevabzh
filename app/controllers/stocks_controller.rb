class StocksController < ApplicationController
  def create
    @sneakers = Sneaker.all
    Stock.create sneaker_id: params[:sneaker_id], seller: params[:seller], size: params[:size], offer_link: params[:offer_link], price: params[:price], shipping_cost: params[:shipping_cost], shipping_time: params[:shipping_time]
    redirect_to "/stocks/#{params[:sneaker_id]}/"
  end
  
  def index
    @stocks = Stock.all
  end
  
  def update
  end
end
