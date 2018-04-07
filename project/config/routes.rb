Rails.application.routes.draw do
	#get 'main/show'

	#get 'main/profile' 
	resources :users, only: [:new, :create]

	#get 'main/settings'
	resources :sessions, only: [:new, :create, :destroy]
	# get 'main/save'


	scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

		root 'main#show'

		match '/signup',  to: 'users#new',            via: 'get'
		match '/signin',  to: 'sessions#new',         via: 'get'
		match '/signout', to: 'sessions#destroy',     via: 'delete'

		match '/settings',  to: 'main#settings',            via: 'get'
		match '/profile',  to: 'main#profile',            via: 'get'
		match '/save',  to: 'main#save',            via: 'post'

	end


	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
