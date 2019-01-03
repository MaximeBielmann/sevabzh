class Stock < ApplicationRecord
 mount_uploader :stock, ListingUploader
 
 paginates_per 20
 
 belongs_to :sneaker
end