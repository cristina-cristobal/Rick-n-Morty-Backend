Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
