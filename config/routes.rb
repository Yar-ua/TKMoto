Rails.application.routes.draw do

  devise_for :users
  get 'persons/profile'

  #resources :stata_fuels
  resources :bikes do
  	resources :stata_fuels
  end

  get 'persons/profile' , as: 'user_root'	#перенаправление для гема devise

  root to: 'home#start'
  
  get '/' => 'home#start'
  get 'home/start'

  get 'home/about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
