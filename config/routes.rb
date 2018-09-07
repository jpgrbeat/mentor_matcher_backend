Rails.application.routes.draw do
  resources :users,:matches,:skills,:user_skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
