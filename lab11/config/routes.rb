Rails.application.routes.draw do
	root 'chain#input'
  get 'chain/input'
  get 'chain/view'
  get 'chain/all_records'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end