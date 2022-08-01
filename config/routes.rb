# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about # url helper
  
  get "sign_up", to: "registrations#new", as: :signUp

  post "sign_up", to: "registrations#create"

  root to: "main#index"
end
