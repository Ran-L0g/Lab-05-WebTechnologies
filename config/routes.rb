Rails.application.routes.draw do
  resources :users
  resources :chats
  resources :messages
  get "messages/index"
  get "messages/show"
  get "messages/new"
  get "chats/index"
  get "chats/show"
  get "chats/new"
  get "users/index"
  get "users/show"
  get "users/new"
  root "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "old_page", to: "pages#old_page"




  post "contact", to: "pages#submit_contact"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
