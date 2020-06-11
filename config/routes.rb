Rails.application.routes.draw do
	
  root 'rooms#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :books
 resources :users
 resources :homes
 get 'home/about'=>'home#about'
end
