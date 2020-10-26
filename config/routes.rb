Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get '/signin', to: 'sessions#new', as: 'signin'

  resources :users  
  resources :attractions
  resources :rides
  resources :sessions

end