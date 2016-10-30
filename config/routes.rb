Rails.application.routes.draw do


  resources :bikes do
  	resources :stata_fuels
  end

  root to: 'home#start'
  
  get '/' => 'home#start'
  get 'home/start'
  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
