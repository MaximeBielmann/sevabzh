class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.order("RANDOM()").limit(4)
  end
  
  def sellers
  end
  
  def faq
  end

end
