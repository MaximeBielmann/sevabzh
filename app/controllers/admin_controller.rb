class AdminController < ApplicationController
  def index
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @sneakers = Sneaker.all
    @stocks = Stock.all
  end
  
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
  
end
