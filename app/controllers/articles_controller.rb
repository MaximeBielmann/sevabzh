class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    Article.create admin_id: params[:admin_id], article_title: params[:article_title], article_text: params[:article_text], article_datetime: params[:article_datetime], article_img: params[:article_img]
    redirect_to "/blog/"
  end

  def show
    if session[:admin_id]
      @current_admin = Admin.find(session[:admin_id])
    end
    @articles = Article.find(params[:id])
    @admins = Admin.all
  end

  def update
    @articles = Article.find(params[:id])
    @articles.admin_id = params[:admin_id] 
    @articles.article_title = params[:article_title]
    @articles.article_text = params[:article_text]
    @articles.article_datetime = params[:article_datetime]
    @articles.article_img = params[:article_img]
    @articles.save
    redirect_to "/blog/#{params[:id]}"
  end

  def destroy
    Article.find(params[:id]).destroy
  end
end
