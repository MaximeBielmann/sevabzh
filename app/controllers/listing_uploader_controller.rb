class ListingUploaderController < ApplicationController
    require 'csv'
    require 'open-uri'
    # https://s3.us-east-2.amazonaws.com/sevabzh/upload.csv
    
    def upload_sneakers
        CSV.foreach('public/sneakers.csv', headers: true) do |row|
            Sneaker.where(sneakers_ref: row['sneakers_ref'], 
                        brand: row['brand'], 
                        title: row['title'], 
                        color: row['color'], 
                        img_url: row['img_url'],
                        img_url2: row['img_url2'],
                        img_url3: row['img_url3']).first_or_create
        end
        redirect_to "/admin/"
    end
    
    def upload_sellers
        CSV.foreach('public/sellers.csv', headers: true) do |row|
            Seller.where(vendor: row['seller'],
                        logo_url: row['logo_url'], 
                        country: row['country'], 
                        description: row['description'],
                        shop_link: row['shop_link'], 
                        shipping_cost: row['shipping_cost'], 
                        payment: row['payment'],
                        shipping_time: row['shipping_time']).first_or_create
        end
        redirect_to "/admin/"
    end
    
    def upload_stocks
        CSV.foreach('public/upload.csv', :col_sep => (";"), headers: true) do |row|
            Stock.where(sneaker_id: Sneaker.where(sneakers_ref: row['sneakers_ref']).ids, 
                        seller_id: Seller.where(vendor: row['seller']).ids,
                        size: row['size'], 
                        offer_link: row['offer_link'],
                        old_price: row['old_price'],
                        price: row['price']).first_or_create
        end
        redirect_to "/admin/"
    end
    
    def delete_sneakers
        Sneaker.destroy_all
        redirect_to "/admin/"
    end
    
    def delete_sellers
        Seller.destroy_all
        redirect_to "/admin/"
    end
    
    def delete_stocks
        Stock.destroy_all
        redirect_to "/admin/"
    end
end
       