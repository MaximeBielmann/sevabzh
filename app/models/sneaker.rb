class Sneaker < ApplicationRecord
 filterrific(
   available_filters: [
    :search_sneakers_ref,
    :search_brand,
    :search_title,
    :search_color
   ]
 )
 
 has_many :stocks
 
 validates :sneakers_ref, presence: true
 validates :brand, presence: true
 validates :title, presence: true
 validates :color, presence: true
 validates :img_url, presence: true
 
 
 scope :search_sneakers_ref, -> (search_sneakers_ref) { where("sneakers_ref = ?", search_sneakers_ref) }
 scope :search_brand, -> (search_brand) { where("brand = ?", search_brand) }
 scope :search_title, -> (search_title) { where("title = ?", search_title) }
 scope :search_color, -> (search_color) { where("color = ?", search_color) }
 
 
end