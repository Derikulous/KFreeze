KFreezePop::Application.routes.draw do

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about", as: :about
  resources :users
  resources :sessions, only: [:create]

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secret#static'

  root "welcome#index"
end
