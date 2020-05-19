Rails.application.routes.draw do
  get 'admin_ordered_products/index'
  
  get 'shipping_addresses/index'
  get 'shipping_addresses/edit'
  get 'orders/new'
  get 'orders/index'
  get 'orders/show'
  get 'orders/confirm'
  get 'orders/complete'
  get 'cart_items/index'
  get 'admin_products/index'
  get 'admin_products/new'
  get 'admin_products/show'
  get 'admin_products/edit'
  devise_for :admins, controllers: {
  sessions: 'admins/sessions',
  registrations: 'admins/registrations'
}
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}
  resources :cart_items,except:[:new,:edit,:show]
  post "cart_items/add_item" => "cart_items#add_item"
  delete "cart_items/:id" => "cart_items#destroy"
  resources :orders,only:[:new,:create,:index,:show]
  post "orders/confirm" => "orders#confirm"
  post "orders" => "orders#create"
  get "orders/complete" => "orders#complete"
  resources :admin_ordered_products, only:[:index,:show]
  patch "admin_ordered_products/:id/order_update" => "admin_ordered_products#order_update", as: 'order_update'
  patch "admin_ordered_products/:id/production_update" => "admin_ordered_products#production_update"
  resources :admin_products,except:[:destroy]
  resources :products,only: [:index,:show]
  resources :shipping_address,only:[:index,:create,:edit,:update]
  get "admins/top" => "admins#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :administrator do
    resources :users, only: [:index]
  end
end
