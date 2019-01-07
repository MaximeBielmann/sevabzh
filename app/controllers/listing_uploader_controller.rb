class ListingUploaderController < ApplicationController
    require 'csv'
    
    def upload
        CSV.foreach('public/upload.csv', headers: true) do |row|
            Sneaker.where(sneakers_ref: row['sneakers_ref'], 
                           brand: row['brand'], 
                           title: row['title'], 
                           color: row['color'], 
                           img_url: row['img_url']).first_or_create
               
            Stock.where(sneaker_id: Sneaker.where(sneakers_ref: row['sneakers_ref']).ids, 
                        seller: row['seller'],
                        size: row['size'], 
                        offer_link: row['offer_link'], 
                        price: row['price'], 
                        shipping_cost: row['shipping_cost'], 
                        shipping_time: row['shipping_time']).first_or_create
        end
        redirect_to "/admin/"
    end
end
        # @import = ListingUploader.new
        # @import.store!(params[:file])
        # @import.retrieve_from_store!(params[:file])
        
        
        