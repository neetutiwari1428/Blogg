Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  ActiveAdmin.routes(self)
  resources :educations
  resources :workexperiences
  resources :languages
  resources :skills
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "articles#index"
  root "welcome#index"
  resources :articles do
    resources :comments
  end
end
