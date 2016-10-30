Rails.application.routes.draw do


  resources :bikes do
  	resources :stata_fuels
  end

  root to: 'home#start'
  match 'home/start', to: 'home#start', via: [:get]
  match 'home/about', to: 'home#about', via: [:get]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
