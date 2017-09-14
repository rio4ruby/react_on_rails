Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  devise_for :users
  resources :pages
  
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
