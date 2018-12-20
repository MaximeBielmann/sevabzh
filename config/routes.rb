Rails.application.routes.draw do
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  
  post 'stocks' => 'stocks#create'
  get 'stocks' => 'stocks#index'
  
  get 'streetwear' => 'streetwears#index'
  get 'blog' => 'streetwears#index'
  get 'contact' => 'streetwears#index'
  
  get 'admin' => 'admin#index'
  get 'admin/login' => 'admin#login'
  post 'admin/login' => 'admin#check'
  
  root 'pages#home'
end
