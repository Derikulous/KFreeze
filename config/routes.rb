KFreezePop::Application.routes.draw do

  devise_for :users,
             controllers: {omniauth_callbacks: "omniauth_callbacks"}

  match '/2am',    to: 'static_pages#2am',    via: 'get'
  match '/2pm',    to: 'static_pages#2pm',    via: 'get'
  match '/bap',    to: 'static_pages#bap',    via: 'get'
  match '/beast',    to: 'static_pages#beast',    via: 'get'
  match '/big-bang',    to: 'static_pages#big_bang',    via: 'get'
  match '/cn-blue',    to: 'static_pages#cn_blue',    via: 'get'
  match '/exo',    to: 'static_pages#exo',    via: 'get'
  match '/f-cuz',    to: 'static_pages#f_cuz',    via: 'get'
  match '/ft-island',    to: 'static_pages#ft_island',    via: 'get'
  match '/infinite',    to: 'static_pages#infinite',    via: 'get'
  match '/mblaq',    to: 'static_pages#mblaq',    via: 'get'
  match '/nu-est',    to: 'static_pages#nu_est',    via: 'get'
  match '/shinee',    to: 'static_pages#shinee',    via: 'get'
  match '/ss501',    to: 'static_pages#ss501',    via: 'get'
  match '/super-junior',    to: 'static_pages#super_junior',    via: 'get'
  match '/teen-top',    to: 'static_pages#teen_top',    via: 'get'
  match '/tvxq',    to: 'static_pages#tvxq',    via: 'get'
  match '/u-kiss',    to: 'static_pages#u_kiss',    via: 'get'
  match '/vixx',    to: 'static_pages#vixx',    via: 'get'
  match '/ze-a',    to: 'static_pages#ze_a',    via: 'get'


  root "welcome#index"
end
