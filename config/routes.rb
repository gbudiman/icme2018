Rails.application.routes.draw do
  root                         to: 'pages#index'
  get      '/paper',           to: 'pages#paper'
  get      '/important_dates',        to: 'pages#important_dates'
  get      '/organizing_committee',         to: 'pages#organizing_committee'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
