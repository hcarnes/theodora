Rails.application.routes.draw do
  resources :submissions
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'submissions#index'
end
