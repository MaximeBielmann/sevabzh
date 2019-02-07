class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def create
    Brand.create brand_title: params[:brand_title], brand_description: params[:brand_description], brand_banner: params[:brand_banner]
    redirect_to "/admin/"
  end

  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @brands = Brand.find(params[:id])
    @sneakers = Sneaker.where(brand_id: params[:id])
  end

  def update
    @brands = Brand.find(params[:id])
    @brands.brand_title = params[:brand_title]
    @brands.brand_description = params[:brand_description]
    @brands.brand_banner = params[:brand_banner]
    @brands.save
    redirect_to "/brands/#{params[:id]}"
  end

  def destroy
    Brand.find(params[:id]).destroy
    redirect_to "/brands"
  end
end
