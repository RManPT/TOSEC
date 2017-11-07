Rails.application.routes.draw do
  

  
  namespace :systems do
    resources :types
  end
  resources :systems
  
  
  
  
  
  

  resources :release_types do
    resources :releases
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
