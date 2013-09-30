KFreezePop::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/edit',  to: 'users#edit',            via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secret#static'

  root "welcome#index"
end
