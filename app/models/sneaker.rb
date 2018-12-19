class Sneaker < ApplicationRecord
 validates :sneakers_ref, presence: true
 validates :brand, presence: true
 validates :title, presence: true
 validates :color, presence: true
 validates :seller, presence: true
 validates :size, presence: true
 validates :img_url, presence: true
 validates :offer_link, presence: true
 validates :price, presence: true
 validates :shipping_cost, presence: true
 validates :shipping_time, presence: true

end