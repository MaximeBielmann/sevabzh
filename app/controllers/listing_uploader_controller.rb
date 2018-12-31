class ListingUploaderController < ApplicationController
    require "csv"
    
    def upload
        @import = ListingUploader.new
        @import.store!(params[:file])
        
        # CSV.foreach(@import.current_path, headers: true) do |row|
        #     Sneaker.create!(row.to_h)
        # end
    end
end