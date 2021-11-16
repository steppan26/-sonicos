Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :costumes, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :offers, only: :create
  end
  resources :offers, only: [:index, :show, :destroy]
end
