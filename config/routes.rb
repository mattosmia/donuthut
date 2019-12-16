Rails.application.routes.draw do
  get 'contacts/new'

  root 'pages#home'
  
  get '/about' =>'pages#about'
  get '/donuts' => 'items#index', :cat => 'donut'
  get '/merch' => 'items#index', :cat => 'merch'
  
  resources :contacts, only: [:new, :create]
  get '/contact', to: 'contacts#new'
  
  resources :items
  
  resources :categories
  
  devise_for :users do
      resources :orders
  end
  
  get 'cart/index'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/clearcart', to: 'cart#clearCart'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart/increase/:id' => 'cart#increase'

  resources :orders do
    resources:orderitems
  end
  get 'orders/admin'
  
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  get '/checkout' => 'cart#createOrder'
  get '/paid/:id' => 'static_pages#paid'
  
  get '/admin' => 'pages#admin'
  get '/users' => 'pages#users'
  
end
