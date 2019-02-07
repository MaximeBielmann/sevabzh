class Brand < ApplicationRecord
    has_many :sneakers, :foreign_key => "brand_id"
    
    validates :brand_title, presence: true, uniqueness: true
end