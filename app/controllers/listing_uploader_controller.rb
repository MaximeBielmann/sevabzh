class ListingUploaderController < ApplicationController
    def upload
        @import = ListingUploader.new
        @import.store!(params[:file])
         redirect_to "/admin/"
    end
end