Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  resources :bid_items

  root to: "bid_items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  resources :bid_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
end
