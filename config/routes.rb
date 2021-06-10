Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'actionlogs/new', to: 'actionlogs#new'
  post 'actionlogs', to: 'actionlogs#create'
  post 'healths', to: 'healths#create'
  resources :users, only:%i[new create]
  resources :healths
  resources :actionlogs
  namespace :admin do
    resources :restaurants, only: [:index, :new, :create, :show,  :edit, :destroy]
    resources :individuals, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
end
