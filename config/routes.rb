Rails.application.routes.draw do
  resources :goals
  resources :comments
  resources :follows
  resources :users
  resources :notes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
