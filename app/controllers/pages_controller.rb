class PagesController < ApplicationController
  def home
    @sneakers = Sneaker.select(:id,:sneakers_ref, :brand, :title, :img_url, :color).group(:sneakers_ref).having("count(*) > 1").last(4)
  end
end
