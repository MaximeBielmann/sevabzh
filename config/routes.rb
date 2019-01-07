Rails.application.routes.draw do
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  post 'sneakers/search' => 'sneakers#search'
  
  post 'stocks' => 'stocks#create'
  get 'stocks' => 'stocks#index'
  
  get 'streetwear' => 'streetwears#index'
  get 'blog' => 'streetwears#index'
  get 'contact' => 'streetwears#index'
  
  get 'admin' => 'admin#index'
  get 'admin/login' => 'admin#login'
  post 'admin/login' => 'admin#check'
  get 'admin/logout' => 'admin#destroy'
  post 'admin' => 'sneakers#create'
  
  get 'sellers' => 'pages#sellers'
  
  get 'faq' => 'pages#faq'
  
  post 'listing_uploader' => 'listing_uploader#upload'
  
  root 'pages#home'
end
