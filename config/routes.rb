Wathclist::Application.routes.draw do
  resources :genres

  resources :films

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end