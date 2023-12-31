Rails.application.routes.draw do
  devise_for :users

  resources :roasters
  resources :shops
  resources :farmers

  root to: "pages#home"

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'roasters', to: 'roasters#index'
  get 'shops', to: 'shops#index'
  get 'farmers', to: 'farmers#index'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
