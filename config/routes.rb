Rails.application.routes.draw do
  
  root "movies#index"

  devise_for :users
  
  resources :movies do 
  	resources :reviews, except: [:show, :index]
  end
  
end
