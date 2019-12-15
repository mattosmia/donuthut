Rails.application.routes.draw do
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  
  get 'orders/admin'

  resources :orders do
    resources:orderitems
  end
  
  resources :categories
  
  get 'cart/index'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/clearcart', to: 'cart#clearCart'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart/increase/:id' => 'cart#increase'
  

  get '/checkout' => 'cart#createOrder'
  get '/paid/:id' => 'static_pages#paid'
  
  resources :items
 
  devise_for :users do
      resources :orders
  end
  
  root 'pages#home'
  
  get '/about' =>'pages#about'
  get '/donuts' => 'items#index'
  get '/merch' => 'items#index'
  get '/order' => 'pages#order'
  get '/contact' => 'pages#contact'
  
  get '/admin' => 'pages#admin'
  
  get '/users/list'
end
