class Calendar < ApplicationRecord
    
    validates :sneaker_id, presence: true
    validates :seller_id, presence: true
    validates :release_date, presence: true
    validates :release_link, presence: true
    validates :release_price, presence: true
    
    belongs_to :sneaker
    belongs_to :seller
end