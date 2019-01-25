class ListingUploaderController < ApplicationController
    require 'csv'
    require 'open-uri'
    # https://s3.us-east-2.amazonaws.com/sevabzh/upload.csv
    
    def upload
        CSV.foreach('public/upload.csv', headers: true) do |row|
            Sneaker.where(sneakers_ref: row['sneakers_ref'], 
                        brand: row['brand'], 
                        title: row['title'], 
                        color: row['color'], 
                        img_url: row['img_url'],
                        img_url2: row['img_url2'],
                        img_url3: row['img_url3']).first_or_create
                           
            # Seller.where(vendor: row['seller'],
            #            logo_url: row['logo_url'], 
            #            country: row['country'], 
            #            description: row['description'],
            #            shop_link: row['shop_link'], 
            #            country: row['country'], 
            #            description: row['description']
            #            shipping_cost: row['shipping_cost'], 
            #            shipping_time: row['shipping_time']).first_or_create
               
            Stock.where(sneaker_id: Sneaker.where(sneakers_ref: row['sneakers_ref']).ids, 
                        seller_id: Seller.where(vendor: row['seller']).ids,
                        size: row['size'], 
                        offer_link: row['offer_link'],
                        old_price: row['old_price'],
                        price: row['price']).first_or_create
                        
        end
        redirect_to "/admin/"
    end
    
end
        # @import = ListingUploader.new
        # @import.store!(params[:file])
        # @import.retrieve_from_store!(params[:file])
        
        
        