Rails.application.routes.draw do
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'

  resources :orders do
    resources:orderitems
  end
  
  resources :categories
  
  get '/checkout' => 'cart#createOrder'
  
  get 'cart/index'

  resources :items
 
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/clearcart', to: 'cart#clearCart'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart/increase/:id' => 'cart#increase'
  
  devise_for :users do
      resources :orders
  end
  
  root 'pages#home'
  
  get '/about' =>'pages#about'
  get '/donuts' => 'items#index'
  get '/merch' => 'items#index'
  get '/order' => 'pages#order'
  get '/contact' => 'pages#contact'
end
