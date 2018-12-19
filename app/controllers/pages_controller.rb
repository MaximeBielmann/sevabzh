class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.select(:sneakers_ref, :brand, :title, :img_url, :color).group(:sneakers_ref).having("count(*) > 1")
  end
end
