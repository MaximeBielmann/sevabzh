Rails.application.routes.draw do
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'sneakers/:sneakers_ref' => 'sneakers#show'
  patch 'sneakers/:sneakers_ref' => 'sneakers#update'
  delete 'sneakers/:sneakers_ref' => 'sneakers#destroy'
  
  get 'streetwear' => 'streetwears#index'
  get 'blog' => 'streetwears#index'
  get 'contact' => 'streetwears#index'
  
  get 'admin' => 'admin#index'
  get 'admin/login' => 'admin#login'
  post 'admin/login' => 'admin#check'
  
  root 'pages#home'
end
