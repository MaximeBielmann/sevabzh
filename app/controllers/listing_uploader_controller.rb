class ListingUploaderController < ApplicationController
    require 'csv'
    
    def upload
        @import = ListingUploader.new
        @import.store!(params[:file])
        @import.retrieve_from_store!(params[:file])
        
        CSV.foreach(@import.current_path, headers: true) do |row|
            Sneaker.create sneakers_ref: row['sneakers_ref'], brand: row['brand'], title: row['title'], color: row['color'], img_url: row['img_url']
            # Stock.create rajouter les colonnes du stock
            # faire un if pour le cas où la sneaker ou le stock existent déjà dans la table
            redirect_to "/sneakers/"
        end
        redirect_to "/sneakers/"
    end
end