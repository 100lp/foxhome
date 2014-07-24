Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :categories, only: :show do
    resources :articles, only: :show, path: ''
  end

  root 'pages#index'
  # обратная связь
  # get 'contact' => 'contact#new', :as => 'contact'
  # post 'contact' => 'contact#create'
  
  # navigation
  get '/about', to: 'pages#about'
  get '/new', to: 'pages#new'
  get '/pressa', to: 'pages#pressa'
  get '/contacts', to: 'pages#contacts'

  # left navigation
 

  # # try to render
  # get '(*page)' => 'articles#show' 
end
