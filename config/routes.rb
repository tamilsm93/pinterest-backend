Rails.application.routes.draw do

 
      resources :users
      resources :articles
      resources :categories, only: [:index, :create]


  
    post 'session', controller: :session,  action: :create
end
