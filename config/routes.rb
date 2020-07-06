Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :characters

  post '/api_call', to: "api_calls#api_call", as: "/api_call"

  post '/login', to: 'sessions#create', as: '/login'

end
