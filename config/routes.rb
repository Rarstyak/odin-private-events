Rails.application.routes.draw do
  get 'event_attendings/new'
  get 'event_attendings/create'
  get 'event_attendings/show'
  get 'event_attendings/edit'
  get 'event_attendings/update'
  get 'event_attendings/destroy'
  get 'events/new'
  get 'events/create'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'users/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "events#index"

  resources :users, only: %i[new create show]
  resources :events, only: %i[new create show]
  resources :event_attendings, only: %i[new create show]
end
