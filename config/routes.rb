KFreezePop::Application.routes.draw do

  devise_for :users,
             controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :users , only: [:show, :edit, :update, :index]

  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  root "welcome#index"
end
