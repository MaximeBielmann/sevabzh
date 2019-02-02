class Seller < ApplicationRecord
    
    has_many :stocks, :foreign_key => "seller_id"
    has_many :calendars, :foreign_key => "seller_id"
    has_many :sneakers, through: :stocks
    
    
    validates :vendor, presence: true, uniqueness: true
    validates :logo_url, presence: true
    
    
end