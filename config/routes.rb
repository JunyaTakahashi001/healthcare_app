Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'healths#index'
  post 'healths', to: 'healths#create'
  resources :users, only:%i[new create]
  resources :healths
end
