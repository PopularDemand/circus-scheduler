Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  resources :users
  resources :events
  
  root to: "home#index"
end
