Rails.application.routes.draw do
  get 'actions/index'
  get 'actions/show'
  get 'actions/new'
  get 'actions/edit'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post 'healths', to: 'healths#create'
  resources :users, only:%i[new create]
  resources :healths
end
