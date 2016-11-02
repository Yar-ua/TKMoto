Rails.application.routes.draw do

  resources :users

  resources :bikes do
  	resources :stata_fuels
  end

  root to: 'home#start'

  match '/signup', 		to: 'users#new',	via: [:get]
  match 'home/start', 	to: 'home#start', 	via: [:get]
  match 'home/about', 	to: 'home#about', 	via: [:get]


end