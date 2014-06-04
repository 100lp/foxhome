Rails.application.routes.draw do

  root 'pages#index'

  # navigation
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

end
