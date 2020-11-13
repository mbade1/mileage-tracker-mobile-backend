Rails.application.routes.draw do
  resources :shoes, only: [:index]
  post '/login' => 'users#login'


  resources :users do 
    resources :runs
    resources :shoes 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
