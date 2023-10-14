Rails.application.routes.draw do
  resources :mensagens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'mensagens#index'
end
