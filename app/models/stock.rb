class Stock < ApplicationRecord
 
 paginates_per 20
 
 belongs_to :sneaker
 belongs_to :seller
 
 validates :sneaker_id, presence: true
 validates :seller_id, presence: true
 validates :offer_link, presence: true
 validates :price, presence: true
 
 scope :search_size, -> (search_size) { where("lower(size) LIKE ?", "%#{search_size.to_s.downcase}%") }
end