Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations"}
  root to: 'pages#home'


  resource :profile, only: [:show, :edit, :update, :destroy ]


  if Rails.env.development?
    mount Localtower::Engine, at: "localtower"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
