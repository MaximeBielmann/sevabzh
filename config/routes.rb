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
  
  post 'listing_uploader/sneakers' => 'listing_uploader#upload_sneakers'
  post 'listing_uploader/sellers' => 'listing_uploader#upload_sellers'
  post 'listing_uploader/stocks' => 'listing_uploader#upload_stocks'
  
  delete 'listing_uploader/sneakers' => 'listing_uploader#delete_sneakers'
  delete 'listing_uploader/sellers' => 'listing_uploader#delete_sellers'
  delete 'listing_uploader/stocks' => 'listing_uploader#delete_stocks'
  
  get 'admin' => 'admin#index'
  get 'admin/login' => 'admin#login'
  post 'admin/login' => 'admin#check'
  get 'admin/logout' => 'admin#destroy'
  post 'admin' => 'sneakers#create'
  
  get 'faq' => 'pages#faq'
  get 'cgu' => 'pages#cgu'
  get 'mentions' => 'pages#legal'
  get 'presskit' => 'pages#presskit'
  
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
  
  get 'admin/article' => "admin#article"
  get 'blog' => "articles#index"
  get 'blog/:id' => "articles#show"
  post 'blog' => 'articles#create'
  patch 'blog/:id' => 'articles#update'
  delete 'blog/:id' => 'articles#destroy'
 
  # PAGES WITHOUT CONTROLLER / FUTUR FEATURES
  get 'streetwear' => 'streetwears#index'
end