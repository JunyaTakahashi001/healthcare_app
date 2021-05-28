Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  get 'home/index'
  get 'login', 'sessions/create'
  get 'logout', 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:%i[new create]
end
