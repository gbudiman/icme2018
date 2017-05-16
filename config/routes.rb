Rails.application.routes.draw do
  root                         to: 'pages#index'
  get      '/paper',           to: 'pages#paper'
  get      '/important_dates',        to: 'pages#important_dates'
  get      '/organizing_committee',         to: 'pages#organizing_committee'
  get      '/workshop', to: 'pages#workshop'
  get      '/tutorial', to: 'pages#tutorial'
  get      '/special_session', to: 'pages#special_session'
  get      '/panel', to: 'pages#panel'
  get      '/demo', to: 'pages#demo'
  get      '/grand_challenge', to: 'pages#grand_challenge'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
