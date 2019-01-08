class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.last(4)
  end
  
  def sellers
  end
  
  def faq
  end

end
