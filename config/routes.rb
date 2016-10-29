Rails.application.routes.draw do
  devise_for :users
  resources :bid_items do
  	resources :bid_records
  end

  resources :users do
  	resources :bid_records
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
