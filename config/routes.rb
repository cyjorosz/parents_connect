Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations"}
  root to: 'pages#home'


  resources :profiles, only: [:show, :update, :destroy ] do 
    resources :kids, only: [:create, :update, :destroy]
    resources :events, only: [:new, :edit, :create, :update, :destroy]
  end

  resources :events, only: [:index, :show]

  ##
  # wait for lecture 5/4/2017 for admin gem to change interests as admin
  ##

  if Rails.env.development?
    mount Localtower::Engine, at: "localtower"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
