Rails.application.routes.draw do
  get 'contacts/new'

  root 'pages#home'
  
  get '/about' =>'pages#about'
  get '/donuts' => 'items#index', :cat => 'donut'
  get '/merch' => 'items#index', :cat => 'merch'
  
  resources :contacts, only: [:new, :create]
  get '/contact', to: 'contacts#new'
  get '/contact/thankyou', to: 'contacts#thankyou'
  
  get '/thankyou', to: 'pages#paid'
  
  resources :items
  
  resources :categories
  
  devise_for :users do
      resources :orders
  end
  
  post '/search' => 'items#search'
  get '/search' => 'pages#home'
  
  get '/cart/index'
  get '/cart', to: 'cart#index'
  get '/cart/collection/:val' => 'cart#setCollection'
  get '/clearcart', to: 'cart#clearCart'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart/increase/:id' => 'cart#increase'
  get '/cart/:id(/:qty)', to: 'cart#add'

  resources :orders do
    resources:orderitems
  end
  
  get '/orderitems/index'
  get '/orderitems/show'
  get '/orderitems/new'
  get '/orderitems/edit'
  
  get '/checkout' => 'cart#createOrder'
  get '/paid/:id' => 'static_pages#paid'
  
  get '/admin' => 'pages#admin'
  get '/admin/products' => 'items#index'
  get '/admin/products/new' => 'items#new'
  get '/admin/orders' => 'orders#admin'
  
  get '/admin/users/upgradeadmin/:id' => 'users#upgradeadmin'
  get '/admin/users/downgradeadmin/:id' => 'users#downgradeadmin'
  
  get '/admin/users(/:id)' => 'pages#users'
end
