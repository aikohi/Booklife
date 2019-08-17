Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'top#show'
  	post 'users/index'
	 resources :books
	 resources :users, except:[:edit,:update,:destroy]
	 resources :sessions, only: [:new, :create, :destroy]
end
