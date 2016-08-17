Rails.application.routes.draw do
  resources :products, :users
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/about'

  get 'static_pages/contact'

  get '/users/:id', to: 'products#show'

  post 'static_pages/thank_you'

  # get 'static_pages/index'
  root 'products#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
