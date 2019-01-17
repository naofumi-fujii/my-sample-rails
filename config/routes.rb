Rails.application.routes.draw do
  resources :characters
  root to: "comments#index"
  resources :comments
  mount Split::Dashboard, at: 'split'
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
