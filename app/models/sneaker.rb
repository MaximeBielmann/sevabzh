class Sneaker < ApplicationRecord
 filterrific(
   available_filters: [
    :search_sneakers_ref,
    :search_brand,
    :search_title,
    :search_color,
   ]
 )
 
 has_many :stocks
 
 validates :sneakers_ref, presence: true
 validates :brand, presence: true
 validates :title, presence: true
 validates :color, presence: true
 validates :img_url, presence: true
 
 
 scope :search_sneakers_ref, lambda {
  where(sneakers_ref: params[:search_sneakers_ref])
 }
 
 scope :search_brand, lambda {
  where(brand: params[:search_brand])
 }
 
 scope :search_title, lambda {
  where(title: params[:search_title])
 }
 
 scope :search_color, lambda {
  where(color: params[:search_color])
 }
 
 def self.options_for_select
 order('LOWER(sneakers_ref)').map { |e| [e.sneakers_ref, e.id] }
 end

end