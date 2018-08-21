Rails.application.routes.draw do
  root              to: 'users#show'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    resources :clients, only: [:show, :index]
  end
  resources :clients
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
