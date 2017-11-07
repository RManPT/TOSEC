Rails.application.routes.draw do
  get 'welcome/index'

  
  

  resources :systems
  resources :collection_types do
    resources :datfiles
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
