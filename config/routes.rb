Rails.application.routes.draw do
  devise_for :patients
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
  resources :products, only: %i[show] do
    resources :orders, only: %i[new create]
  end
end
