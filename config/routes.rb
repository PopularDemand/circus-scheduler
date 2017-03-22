Rails.application.routes.draw do
  # Devise
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
