Rails.application.routes.draw do

  #rotas para o devise
    #rotas para registar utlizadores devido a ter removido o :registerable do model de users
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
    #rotas para todo o resto do devise
  devise_for :users
  resources :users
  
  
  get 'welcome/start'
  get 'welcome/whatisit'
  get 'welcome/history'
  get 'welcome/goals'
  get 'welcome/structure'
  get 'welcome/faq'
 
  
  namespace :systems do
    resources :types
  end
  resources :systems
  resources :releases
  resources :companies

  resources :datfiles
  resources :collection_types
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end