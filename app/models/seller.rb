class Seller < ApplicationRecord
    has_many :stocks
    has_many :stocks
    
    validates :logo_url, presence: true
    validates :vendor, presence: true
    validates :shop_link, presence: true
end