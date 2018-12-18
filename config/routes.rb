Rails.application.routes.draw do
  get 'sneakers' => 'sneakers#index'
  post 'sneakers' => 'sneakers#create'
  get 'admin' => 'admin#index'
  get 'sneakers/:id' => 'sneakers#show'
  patch 'sneakers/:id' => 'sneakers#update'
  delete 'sneakers/:id' => 'sneakers#destroy'
  
  root 'pages#home'
end
