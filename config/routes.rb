Minibank::Application.routes.draw do
  root to: 'sessions#new'
  resources :sessions
  get 'login' => 'sessions#new', :as => 'login'
  get 'logout' => 'sessions#destroy', :as => 'logout'

  resources :clients do
    resources :accounts
  end

  resources :accounts do
    resources :transactions
  end
end
