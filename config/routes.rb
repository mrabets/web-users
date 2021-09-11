Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'home#index'
  match '/users/:id',     to: 'users#show',       via: 'get'
  resources :users, :only =>[:show]
  get '/list', to:   'pages#list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
