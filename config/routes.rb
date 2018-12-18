Rails.application.routes.draw do
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'admin' => 'admin#index'
  get 'sneakers/:id/:sneakers_ref' => 'sneakers#show'
  patch 'sneakers/:id/:sneakers_ref' => 'sneakers#update'
  delete 'sneakers/:id/:sneakers_ref' => 'sneakers#destroy'
  
  get 'streetwear' => 'streetwears#index'
  get 'blog' => 'streetwears#index'
  get 'contact' => 'streetwears#index'
  
  root 'pages#home'
end
