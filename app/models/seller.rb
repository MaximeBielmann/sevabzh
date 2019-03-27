class Seller < ApplicationRecord
    
    has_many :stocks, :foreign_key => "seller_id"
    has_many :calendars, :foreign_key => "seller_id"
    has_many :sneakers, through: :stocks
    has_many :coupons, :foreign_key => "seller_id"
    
    validates :vendor, presence: true, uniqueness: true
    validates :logo_url, presence: true
    
    
end