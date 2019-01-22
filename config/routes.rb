Rails.application.routes.draw do
  root 'pages#home'
  
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  post 'sneakers/search' => 'sneakers#search'
  
  post 'stocks' => 'stocks#create'
  get 'stocks' => 'stocks#index'
  
  get 'sellers' => 'sellers#index'
  get 'sellers/:id' => 'sellers#show'
  post 'sellers' => 'sellers#create'
  patch 'sellers/:id' => 'sellers#update'
  delete 'sellers/:id' => 'sellers#destroy'
  
  get 'calendar' => 'calendars#index'
  get 'calendar/:id' => 'calendars#show'
  post 'calendar' => 'calendars#create'
  patch 'calendar/:id' => 'calendars#update'
  delete 'calendar/:id' => 'calendars#destroy'
  
  post 'listing_uploader' => 'listing_uploader#upload'
  
  get 'admin' => 'admin#index'
  get 'admin/login' => 'admin#login'
  post 'admin/login' => 'admin#check'
  get 'admin/logout' => 'admin#destroy'
  post 'admin' => 'sneakers#create'
  
  get 'faq' => 'pages#faq'
  get 'cgu' => 'pages#cgu'
  get 'mentions' => 'pages#legal'
  get 'presskit' => 'pages#presskit'
 
  # PAGES WITHOUT CONTROLLER / FUTUR FEATURES
  get 'blog' => 'streetwears#index'
  get 'streetwear' => 'streetwears#index'
  get 'contact' => 'pages#contact'
end
