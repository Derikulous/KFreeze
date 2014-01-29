KFreezePop::Application.routes.draw do

  devise_for :users,
             controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :users , only: [:show, :edit, :update, :index]

  match '/2am',    to: 'static_pages#2am',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  root "welcome#index"
end
