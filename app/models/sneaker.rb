class Sneaker < ApplicationRecord
 
 has_many :stocks
 
 validates :sneakers_ref, presence: true
 validates :brand, presence: true
 validates :title, presence: true
 validates :color, presence: true
 validates :img_url, presence: true

end