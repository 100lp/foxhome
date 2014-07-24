Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :categories, only: :show do
    resources :articles, only: :show, path: ''
  end

  root 'pages#index'
  
  # navigation
  get '/about', to: 'pages#about'
  get '/contacts', to: 'pages#contacts'

  # left navigation
 

  # # try to render
  # get '(*page)' => 'articles#show' 
end
