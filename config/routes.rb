Rails.application.routes.draw do
  get 'users/new'

  devise_for :users
  resources :bid_items do
    collection do
      get 'search'
    end

    member do
      get 'bid'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
