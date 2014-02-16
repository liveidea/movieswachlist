Wathclist::Application.routes.draw do
	scope '(:locale)', locale: /en|uk/ do
  	resources :genres

  	resources :films do
  		resources :comments
  		resources :selected_films do 
        member do 
          post :watched_status
          post :destroy_ajax
        end
      end
      
  	end
	
  	devise_for :users, :controllers => {:registrations => "registrations"}
  	resources :users
  	resources :selected_films

  	get "/search", to: "films#search", as: :search
    get "/most_popular", to: "home#most_popular", as: :most_popular
   
	end
  
  get '/(:locale)' => "home#index", as: "root"
end