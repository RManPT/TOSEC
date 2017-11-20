Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  
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