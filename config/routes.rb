Rails.application.routes.draw do
  # Devise
  devise_for :users, controllers: { sessions: 'devise/sessions' }

  resources :users
  root to: "home#index"
end
