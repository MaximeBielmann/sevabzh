class Sneaker < ApplicationRecord
 filterrific(
   available_filters: [
    :search_sneakers_ref
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
 
 
 def self.options_for_select
 order('LOWER(sneakers_ref)')
 end

end