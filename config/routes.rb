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
  get '/pressa', to: 'pages#pressa'
  get '/classes', to: 'pages#classes'
  get '/doings', to: 'pages#doings'
  get '/contact', to: 'pages#contact'

  # left navigation
  get '/new', to: 'pages#new'
  get '/ugolki-dushi', to: 'pages#ugolki'
  get '/sozvezdii-slona', to: 'pages#sozvezdie'
  get '/lady', to: 'pages#lady'
  get '/homo-insectarium', to: 'pages#homo'

  # обратная связь
  # post '/message' => 'pages#message'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  # # try to render
  # get '(*page)' => 'articles#show' 
end
