class Seller < ApplicationRecord
    has_many :stocks
    has_many :sneakers
    
    attr_accessor :vendor
    
    validates :vendor, presence: true, uniqueness: true
    validates :logo_url, presence: true
end