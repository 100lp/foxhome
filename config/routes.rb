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
  get '/interiors', to: 'pages#interiors'
  get '/mebel', to: 'pages#mebel'
  get '/grafika', to: 'pages#grafika'

  get '/portfolio', to: 'pages#portfolio'
  get '/uslugi', to: 'pages#uslugi'
  get '/price', to: 'pages#price'
  get '/learning', to: 'pages#learning'
  get '/articles', to: 'pages#articles'
  get '/about', to: 'pages#about'
  get '/contacts', to: 'pages#contacts'

  # left navigation
 

  # # try to render
  # get '(*page)' => 'articles#show' 
end
