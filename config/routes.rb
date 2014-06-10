Rails.application.routes.draw do

  root 'pages#index'

  # navigation
  get '/about', to: 'pages#about'
  get '/pressa', to: 'pages#pressa'
  get '/classes', to: 'pages#classes'
  get '/news', to: 'pages#news'
  get '/contact', to: 'pages#contact'

end
