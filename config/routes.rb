Rails.application.routes.draw do
  root                         to: 'pages#index'
  get      '/paper',           to: 'pages#paper'
  get      '/schedule',        to: 'pages#schedule'
  get      '/sponsor',         to: 'pages#sponsor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
