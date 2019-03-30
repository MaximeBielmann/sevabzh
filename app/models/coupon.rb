class Coupon < ApplicationRecord
    belongs_to :sneaker, optional: true
    belongs_to :seller, optional: true
    belongs_to :brand, optional: true

    validates :coupon_title, presence: true
    validates :coupon_start, presence: true
    validates :coupon_end, presence: true
end 
