Rails.application.routes.draw do
  get '/', to: 'session#signin'
  resources :users
  resources :clients
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
