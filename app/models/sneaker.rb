class Sneaker < ApplicationRecord
 
 paginates_per 16
 
 filterrific(
   available_filters: [
    :search_sneakers_ref,
    :search_brand,
    :search_title,
    :search_color,
    :search_price,
    :search_all
   ]
 )
 
 belongs_to :brand
 has_many :stocks, :foreign_key => "sneaker_id"
 has_many :calendars, :foreign_key => "sneaker_id"
 has_many :coupons, :foreign_key => "sneaker_id"
 has_many :sellers, through: :stocks
 has_many :coupons, :foreign_key => "sneaker_id"
 
 validates :sneakers_ref, presence: true, uniqueness: true
 validates :title, presence: true
 validates :img_url, presence: true
 
 
 scope :search_sneakers_ref, -> (search_sneakers_ref) { where("lower(sneakers_ref) LIKE ?", "%#{search_sneakers_ref.to_s.downcase}%") }
 scope :search_brand, -> (search_brand) { joins(:brand).where("lower(brand_title) LIKE ?", "%#{search_brand.to_s.downcase}%").select(:id, :img_url, :sneakers_ref, :title, :brand_id, :brand_title, :brand_description, :brand_banner) }
 scope :search_title, -> (search_title) { where("lower(title) LIKE ?", "%#{search_title.to_s.downcase}%") }
 scope :search_color, -> (search_color) { where("lower(color) LIKE ?", "%#{search_color.to_s.downcase}%") }
 scope :search_price, -> (search_price) { joins(:stocks).where("price < ?", "#{search_price.to_f}").select(:id, :sneakers_ref, :brand_id, :title, :color, :img_url).distinct }
 scope :search_all, -> (search_all) { where("lower(sneakers_ref) AND lower(brand) AND lower(title) AND lower(color) LIKE ?", "%#{search_all.to_s.downcase}%") }
end