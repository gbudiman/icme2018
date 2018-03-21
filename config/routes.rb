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
  get      '/student_participation', to: 'pages#student_participation'
  #get      '/nsf_travel', to: 'pages#nsf_travel'
  get      '/industry_track_papers', to: 'pages#industry_track_papers'
  get      '/expo', to: 'pages#expo'
  get      '/sponsorship', to: 'pages#sponsorship'
  get      '/presentation', to: 'pages#presentation'
  get      '/conf_glance', to: 'pages#conf_glance'
  get      '/conf_schedule', to: 'pages#conf_schedule'
  get      '/conf_plenary', to: 'pages#conf_keynotes'
  get      '/conf_keynotes', to: 'pages#conf_keynotes'
  get      '/conf_papers', to: 'pages#conf_papers'
  get      '/conf_workshops', to: 'pages#conf_workshops'
  get      '/conf_tutorials', to: 'pages#conf_tutorials'
  get      '/conf_sessions', to: 'pages#conf_sessions'
  get      '/conf_panels', to: 'pages#conf_panels'
  get      '/conf_demo', to: 'pages#conf_demo'
  get      '/conf_challenges', to: 'pages#conf_challenges'
  get      '/conf_students', to: 'pages#conf_students'
  get      '/conf_industry', to: 'pages#conf_industry'
  get      '/conf_expo', to: 'pages#conf_expo'
  get      '/conf_awards', to: 'pages#conf_awards'
  get      '/student_career_dinner', to: 'pages#student_dinner_industry_sponsors'
  get      '/student_dinner_industry_sponsors', to: 'pages#student_dinner_industry_sponsors'
  get      '/sponsors', to: 'pages#sponsors'
  get      '/author_info', to: 'pages#author_info'
  get      '/author_camera_ready', to: 'pages#author_camera_ready'
  get      '/author_presentation_guide', to: 'pages#author_presentation_guide'
  get      '/registration_desk', to: 'pages#registration_desk'
  get      '/registration', to: 'pages#registration'
  get      '/visa', to: 'pages#visa'
  get      '/venue', to: 'pages#venue'
  get      '/local', to: 'pages#local'
  get      '/accommodations', to: 'pages#accommodations'
  get      '/attractions', to: 'pages#attractions'
  get      '/social', to: 'pages#social'
  #get      '/visa_invitation', to: 'pages#visa_invitation'
  #get      '/visa_payment', to: 'pages#visa_payment'
  get      '/copyright', to: 'pages#copyright'
  get      '/copyright_completed', to: 'pages#copyright_completed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
