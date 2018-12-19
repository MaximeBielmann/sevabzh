class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.select(:sneakers_ref, :brand, :title, :img_url, :color).group(:sneakers_ref, :brand, :title, :img_url, :color).having("count(*) > 1").last(4)
  end
end
