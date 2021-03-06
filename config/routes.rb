Rails.application.routes.draw do

  root 'pages#home'

  get 'about', to: 'pages#about'

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]

  resources :articles

  get 'signup', to: 'users#new'

  get 'share', to: 'social#new'
  #post 'users', to: 'users#create' #OR Use
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
