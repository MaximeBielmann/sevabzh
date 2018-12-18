class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.distinct(:sneakers_ref).last(4)
  end
end
