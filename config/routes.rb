Rails.application.routes.draw do
  get 'blogs/index'
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'admin' => 'admin#index'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  
  get 'streetwear' => 'streetwears#index'
  get 'blog' => 'streetwears#index'
  get 'contact' => 'streetwears#index'
  
  root 'pages#home'
end
