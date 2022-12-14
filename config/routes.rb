# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about # url helper
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registration#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy" # these are all linked to controllers

  root to: "main#index"
end
