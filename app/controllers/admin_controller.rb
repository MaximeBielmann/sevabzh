class AdminController < ApplicationController
  def index
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @sneakers = Sneaker.all.reverse
    @stocks = Stock.all
    @sellers = Seller.all
    
    @sneakersize = Sneaker.all.size
    @stocksize = Stock.all.size
    @sellersize = Seller.all.size
  end
  
  # def updatesneakers
  #  require 'csv'
  #  @newsneakers = CSV.foreach(open('/ej2za7lz3x7b/public/test.csv'), :headers => true, :col_sep => "|") do |newsneaker|
  #  newsneaker = Sneaker.create sneakers_ref: row['sneakers_ref'], brand: row['brand'], title: row['title'], color: row['color'], img_url: row['img_url']
  #  end
  #  redirect_to "/sneakers/"
  # end
  
  def check
    @current_admin = Admin.where(name: params[:name], password: params[:password]).first
    if @current_admin
      session[:admin_id] = @current_admin.id
      flash[:info] = "Bienvenue #{@current_admin.name} !"
      redirect_to "/admin/"
    else
      session[:admin_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/admin/login"
    end
  end
  
  def destroy
    session[:admin_id] = nil
    redirect_to "/admin"
  end
  
  def article
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @admins = Admin.all
  end
  
end
