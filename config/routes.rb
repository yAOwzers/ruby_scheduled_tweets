# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about # url helper
  
  root to: "main#index"
end
