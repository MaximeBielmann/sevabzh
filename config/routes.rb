Rails.application.routes.draw do
  get 'coupons/index'
  get 'coupons/create'
  get 'coupons/show'
  get 'coupons/update'
  get 'coupons/destroy'
  get 'brands/index'
  get 'brands/create'
  get 'brands/show'
  get 'brands/update'
  get 'brands/destroy'
  root 'pages#home'
  
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  post 'sneakers/search' => 'sneakers#search'
  
  get 'brands' => 'brands#index'
  post 'brands' => 'brands#create'
  get 'brands/:id' => 'brands#show'
  patch 'brands/:id' => 'brands#update'
  delete 'brands/:id' => 'brands#destroy'

  get 'coupons' => 'coupons#index'
  post 'coupons' => 'coupons#create'
  get 'coupons/:id' => 'coupons#show'
  patch 'coupons/:id' => 'coupons#update'
  delete 'coupons/:id' => 'coupons#destroy'
  
  post 'stocks' => 'stocks#create'
  get 'stocks' => 'stocks#index'
  
  get 'sellers' => 'sellers#index'
  get 'sellers/:id' => 'sellers#show'
  post 'sellers' => 'sellers#create'
  patch 'sellers/:id' => 'sellers#update'
  delete 'sellers/:id' => 'sellers#destroy'
  
  get 'brands' => 'brands#index'
  post 'brands' => 'brands#create'
  get 'brands/:id' => 'brands#show'
  patch 'brands/:id' => 'brands#update'
  delete 'brands/:id' => 'brands#destroy'
  
  get 'coupons' => 'coupons#index'
  post 'coupons' => 'coupons#create'
  get 'coupons/:id' => 'coupons#show'
  patch 'coupons/:id' => 'coupons#update'
  delete 'coupons/:id' => 'coupons#destroy'
  
  get 'calendar' => 'calendars#index'
  get 'calendar/:id' => 'calendars#show'
  post 'calendar' => 'calendars#create'
  patch 'calendar/:id' => 'calendars#update'
  delete 'calendar/:id' => 'calendars#destroy'
  get 'calendar-export' => 'calendars#export'
  
  post 'listing_uploader/sneakers' => 'listing_uploader#upload_sneakers'
  patch 'listing_uploader/sneakers' => 'listing_uploader#update_sneakers'
  post 'listing_uploader/sellers' => 'listing_uploader#upload_sellers'
  post 'listing_uploader/stocks' => 'listing_uploader#upload_stocks'
  post 'listing_uploader/brands' => 'listing_uploader#upload_brands'

  
  delete 'listing_uploader/sneakers' => 'listing_uploader#delete_sneakers'
  delete 'listing_uploader/sellers' => 'listing_uploader#delete_sellers'
  delete 'listing_uploader/stocks' => 'listing_uploader#delete_stocks'
  delete 'listing_uploader/brands' => 'listing_uploader#delete_brands'
  
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