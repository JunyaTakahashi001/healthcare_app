Rails.application.routes.draw do
  
  get 'healths/index'
  get 'healths/show'
  get 'healths/new'
  get 'healths/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'healths#index'
  resources :users, only:%i[new create]
end
