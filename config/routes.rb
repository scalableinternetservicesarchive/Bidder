Rails.application.routes.draw do
  resources :user_communities
  resources :communities

  devise_for :users
  resources :bid_items do
  	resources :bid_records
    collection do
      get 'search'
    end
  end

  resources :users do
  	resources :bid_records
  end


  resources :communities do
    post 'join', :on => :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
