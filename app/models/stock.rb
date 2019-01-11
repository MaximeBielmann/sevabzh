class Stock < ApplicationRecord
 
 paginates_per 20
 
 belongs_to :sneaker
 belongs_to :seller
 
 validates :sneaker_id, presence: true
 validates :seller, presence: true
 validates :offer_link, presence: true
 validates :price, presence: true

end