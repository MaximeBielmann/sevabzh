class PagesController < ApplicationController
  def home
    @shoes = Sneaker.last(4)
    
   
  end
  
  def sellers
  end
  
  def faq
  end
  
  def cgu
  end
  
  def legal
  end
  
  def contact
  end

  def presskit
  end
end
