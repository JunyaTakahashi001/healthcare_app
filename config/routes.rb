Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'actions/new', to: 'actions#new'
  post 'actions', to: 'actions#create'
  post 'healths', to: 'healths#create'
  resources :users, only:%i[new create]
  resources :healths
  resources :actions
end
