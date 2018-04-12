Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions
  delete '/sessions', to: 'sessions#destroy', as: 'destroy'
  get '/secrets', to: 'secrets#show'
end
