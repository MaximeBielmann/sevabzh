class PagesController < ApplicationController
  def home
    @shoes = Sneaker.last(4)
    
    @filterrific = initialize_filterrific(
     Sneaker,
     params[:filterrific],
     select_options: {
        search_sneakers_ref: Sneaker,
        search_brand: Sneaker,
        search_title: Sneaker,
        search_color: Sneaker
        
      },
   ) or return
   @sneakers = @filterrific.find.page(params[:page])

   respond_to do |format|
     format.html
     format.js
   end
  end
  
  def sellers
  end
  
  def faq
  end
  
  def cgu
  end
  
  def legal
  end

end
