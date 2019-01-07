class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.all.last(4)
  end
  
  def sellers
  end
  
  def faq
  end

end
