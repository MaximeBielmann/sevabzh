class Stock < ApplicationRecord
 paginates_per 20
 
 belongs_to :sneaker
end