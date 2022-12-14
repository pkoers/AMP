Rails.application.routes.draw do
  get 'emails/new'
  get 'profiles/me'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :emails, only: [:new, :create]
end
