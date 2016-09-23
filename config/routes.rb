Rails.application.routes.draw do

  #resources :stata_fuels
  resources :bikes do
  	resources :stata_fuels #, only: [ :new, :create, :edit, :update]
  end

  

  root to: 'home#start'
  
  get '/' => 'home#start'
  get 'home/start'

  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
