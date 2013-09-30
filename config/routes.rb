KFreezePop::Application.routes.draw do
  match '/signup',  to: 'users#new',            via: 'get'
  resources :users
  resources :sessions, only: [:create]

  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secret#static'

  root "welcome#index"
end
