Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  resources :comments
  collection do
    get :search  #creates a path for our nav bar search parameters
  end
end
  resources :subscribers
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
