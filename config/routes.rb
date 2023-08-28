require 'sidekiq/web'
Rails.application.routes.draw do
	scope controller: :static do
		get :pricing
	end

	root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
