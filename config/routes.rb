Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fish_journals
      resources :pins
      resources :users, only: [:create, :update, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
