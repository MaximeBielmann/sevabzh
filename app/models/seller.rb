class Seller < ApplicationRecord
    has_many :stocks
    has_many :stocks
    
    validates :vendor, presence: true, uniqueness: true
    validates :logo_url, presence: true
end