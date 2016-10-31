Rails.application.routes.draw do

  resources :bikes do
  	resources :stata_fuels
  end

  root to: 'home#start'

  get 'users/new'

  match '/signup', 		to: 'users#new',	via: [:get]
  match 'home/start', 	to: 'home#start', 	via: [:get]
  match 'home/about', 	to: 'home#about', 	via: [:get]


end