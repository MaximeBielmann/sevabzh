class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.last(4)
  end
end
