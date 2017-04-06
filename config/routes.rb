 Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: "registrations"}
  root to: 'pages#home'

  resources :profiles do

    resources :kids, only: [:new, :create, :update, :destroy]
    resources :events, only: [:new, :edit, :create, :update, :destroy]
  end

  resources :events, only: [:index, :show]

  resources :attendances, only: [ :create, :destroy ]

  if Rails.env.development?
    mount Localtower::Engine, at: "localtower"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
