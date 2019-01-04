class ListingUploaderController < ApplicationController
    require 'csv'
    
    def upload
        # @import = ListingUploader.new
        # @import.store!(params[:file])
        # @import.retrieve_from_store!(params[:file])
        
        CSV.foreach(params[:file], headers: true) do |row|
            Sneaker.create sneakers_ref: row['sneakers_ref'], 
                           brand: row['brand'], 
                           title: row['title'], 
                           color: row['color'], 
                           img_url: row['img_url']
        end
        redirect_to "/admin/"
    end
end