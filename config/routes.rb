Rails.application.routes.draw do
  resources :reviews
  resources :flights
  resources :airlines
  patch "airlines/:id/likes", to: "airlines#increment_likes"
  patch "airlines/:id/dislikes", to: "airlines#increment_dislikes"
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
