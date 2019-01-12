class Seller < ApplicationRecord
    has_many :stocks
    has_many :sneakers
    
    validates :vendor, presence: true, uniqueness: true
    validates :logo_url, presence: true
end