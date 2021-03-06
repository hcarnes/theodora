Rails.application.routes.draw do
  authenticate :user do
    resources :organizations
    get 'tenant_selector', to: 'tenant_selector#index'
    post 'select_tenant/:id', to: 'tenant_selector#create', as: :select_tenant
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
