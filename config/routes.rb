Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :purchases
      resources :shows, only: [:index, :create, :show, :update, :destroy]
      resources :comedians, only: [:index, :show, :create]
      resources :venues, only: [:index, :show]
      resources :users, except: [:create, :show]
      post '/login', to: 'sessions#login'
      delete '/logout', to: 'sessions#logout'
      get '/authorized_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get "/venues/:venue_id/shows", to: 'venues#view'
    end
  end
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
