Rails.application.routes.draw do
	root 'chain#input'
  get 'chain/input'
  get 'chain/view'
  get 'chain/all_records'
  get 'sessions/new'

  resources :users
  resource :sessions, only: %i[new create destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end