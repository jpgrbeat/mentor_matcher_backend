Rails.application.routes.draw do
  resources :users, :skills, :user_skills
  resources :matches, only: [:index, :create, :destroy]


  post '/login', to: 'auth#login'

  get '/me', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
