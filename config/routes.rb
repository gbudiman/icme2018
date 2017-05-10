Rails.application.routes.draw do
  root                         to: 'pages#index'
  get      '/schedule',        to: 'pages#schedule'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
