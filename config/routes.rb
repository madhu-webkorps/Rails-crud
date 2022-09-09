Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/users/index' , 'users#index'
  resources :users
  resources :products
  get '/download', to: 'users#download'
  # get 'sell_product/new'
  # get '/sell_product' ,  to: 'products#new'
end
