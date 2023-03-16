Rails.application.routes.draw do
  resources :posts
  resources :welcome
  get 'posts/pdf/:id', to:'posts#pdf',as: 'posts_pdf'
  get 'welcome/pdf/:id', to:'welcome#pdf',as: 'welcome_pdf'
  get 'welcoms/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'welcome/index'
  devise_for :users
  resources :workexperiences
  resources :skills
  resources :profiles
  resources :languages
  resources :educations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  # root "welcoms#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
