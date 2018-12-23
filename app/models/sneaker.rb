class Sneaker < ApplicationRecord
 paginates_per 1
 
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
 
 
 scope :search_sneakers_ref, -> (search_sneakers_ref) { where("lower(sneakers_ref) LIKE ?", "%#{search_sneakers_ref.to_s.downcase}%") }
 scope :search_brand, -> (search_brand) { where("lower(brand) LIKE ?", "%#{search_brand.to_s.downcase}%") }
 scope :search_title, -> (search_title) { where("lower(title) LIKE ?", "%#{search_title.to_s.downcase}%") }
 scope :search_color, -> (search_color) { where("lower(color) LIKE ?", "%#{search_color.to_s.downcase}%") }
 
 
end