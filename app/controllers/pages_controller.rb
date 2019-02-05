class PagesController < ApplicationController
  def home
    @filterrific = initialize_filterrific(
     Sneaker,
     params[:filterrific],
     select_options: {
        search_sneakers_ref: Sneaker,
        search_brand: Sneaker,
        search_title: Sneaker
        
      }, :persistence_id => false,
   ) or return 
   
   @sneakers = @filterrific.find.page(params[:page])
   respond_to do |format|
     format.html
     format.js
   end
   
    @shoes = Sneaker.last(4)
    @releases = Calendar.last(4)
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
